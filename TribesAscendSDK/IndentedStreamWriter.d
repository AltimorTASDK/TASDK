module IndentedStreamWriter;

private import core.vararg;
private import std.conv;
private import std.file;
private import std.path;
private import std.stdio;
private import std.c.string;

public final class IndentedStreamWriter
{
private:
	bool mCurrentLineIndented;
	bool mClosed;
	int mIndent;
	File mInnerFile;

public:
	this(string fileName)
	{
		string dName = dirName(fileName);
		if (dName != "." && !exists(dName))
			mkdirRecurse(dName);
		this.mInnerFile = File(fileName, "w");
	}

	~this()
	{
		if (!mClosed)
			Close();
	}

	@property auto ref int Indent() { return mIndent; }
	
	void Close()
	{
		if (!mClosed)
		{
			mClosed = true;
			Flush();
			mInnerFile.close();
		}
	}
	
	void Flush()
	{
		mInnerFile.flush();
	}

	private void EnsureIndent()
	{
		if (!mCurrentLineIndented)
		{
			for (int i = 0; i < mIndent; i++)
				mInnerFile.write("\t");
			mCurrentLineIndented = true;
		}
	}

	void Write(Char, A...)(in Char[] message, A args)
	{
		EnsureIndent();
		static if (args.length)
			mInnerFile.writef(message, args);
		else
			mInnerFile.write(message);

		version(Debug)
			Flush();
	}

	void WriteLine()()
	{
		EnsureIndent();
		mInnerFile.writeln();
		mCurrentLineIndented = false;

		version(Debug)
			Flush();
	}

	void WriteLine(Char, A...)(in Char[] message, A args)
	{
		EnsureIndent();
		static if (args.length)
			mInnerFile.writefln(message, args);
		else
			mInnerFile.writeln(message);
		mCurrentLineIndented = false;

		version(Debug)
			Flush();
	}
	
}
