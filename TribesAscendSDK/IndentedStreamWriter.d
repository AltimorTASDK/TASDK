module IndentedStreamWriter;

private import core.vararg;
private import std.conv;
private import std.stdio;
private import std.c.string;

public final class IndentedStreamWriter
{
private:
	string mCurrentIndentString = "";
	bool mCurrentLineIndented;
	bool mClosed;
	int mIndent;
	File mInnerFile;
	
public:
	this(string fileName)
	{
		this.mInnerFile = File(fileName, "w");
	}

	~this()
	{
		if (!mClosed)
			Close();
	}

	@property
	{
		int Indent() { return mIndent; }
		int Indent(int indent) 
		{
			mIndent = indent;
			if (mIndent != indent)
			{
				mIndent = indent;
				char[] buf = new char[indent];
				buf[] = '\t';
				mCurrentIndentString = cast(immutable char[])buf;
			}
			return indent; 
		}
	}
	
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
	
	void Write(Char, A...)(in Char[] message, A args)
	{
		if (!mCurrentLineIndented)
		{
			mInnerFile.write(mCurrentIndentString);
			mCurrentLineIndented = true;
		}
		static if (args.length)
			mInnerFile.writef(message, args);
		else
			mInnerFile.write(message);
		Flush();
	}
	
	void WriteLine(Char, A...)(in Char[] message, A args)
	{
		if (!mCurrentLineIndented)
		{
			mInnerFile.write(mCurrentIndentString);
			mCurrentLineIndented = true;
		}
		static if (args.length)
			mInnerFile.writefln(message, args);
		else
			mInnerFile.writeln(message);
		mCurrentLineIndented = false;
		Flush();
	}
	
}
