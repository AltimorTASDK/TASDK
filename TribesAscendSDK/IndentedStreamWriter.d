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
	final class IndentClass
	{
		IndentedStreamWriter mParent;
		int mIndent;
		this(IndentedStreamWriter parent)
		{
			mParent = parent;
		}

		private void SetIndent(int indent)
		{
			mIndent = indent;
			if (mIndent != indent)
			{
				mIndent = indent;
				char[] buf = new char[indent];
				buf[] = '\t';
				mParent.mCurrentIndentString = cast(immutable char[])buf;
			}
		}

		void opUnary(string s)()
		{
			static if (s == "++")
				SetIndent(mIndent + 1);
			else static if (s == "--")
				SetIndent(mIndent - 1);
			else
				static assert(0, "Operator " ~ op ~ " is not implemented!");
		}
	}
	IndentClass mIndent;
	File mInnerFile;

public:
	this(string fileName)
	{
		this.mInnerFile = File(fileName, "w");
		this.mIndent = new IndentClass(this);
	}

	~this()
	{
		if (!mClosed)
			Close();
	}

	@property auto ref IndentClass Indent() { return mIndent; }
	
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
		// TODO: This shouldn't be flushing after every call, only enabled for debugging purposes.
		Flush();
	}

	void WriteLine()()
	{
		if (!mCurrentLineIndented)
		{
			mInnerFile.write(mCurrentIndentString);
			mCurrentLineIndented = true;
		}
		mInnerFile.writeln();
		mCurrentLineIndented = false;
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
