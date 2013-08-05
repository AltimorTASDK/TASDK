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
	int mIndent;
	File mInnerFile;
	
public:
	this(string fileName)
	{
		this.mInnerFile = File(fileName, "w");
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
		this.Flush();
		mInnerFile.close();
	}
	
	void Flush()
	{
		mInnerFile.flush();
	}
	
	void Write(const char* message, ...)
	{
		char[] buffer = new char[2048];
		buffer[] = 0;
		
		va_list lst;
		va_start(lst, message);
		int res = vsprintf(buffer.ptr, message, lst);
		va_end(lst);

//		if (res < 0)
//			mInnerFile.write("It was < 0");
//		else
//			mInnerFile.write("The result was '" ~ to!string(res) ~ "'.\n");
		
		if (!mCurrentLineIndented)
		{
			this.mInnerFile.write(this.mCurrentIndentString);
			this.mCurrentLineIndented = true;
		}
		this.mInnerFile.write(buffer[0..strlen(buffer.ptr)]);
		Flush();
	}
	
	void WriteLine(const char* message, ...)
	{
		char[] buffer = new char[2048];
		buffer[] = 0;
		
		va_list lst;
		va_start(lst, message);
		vsprintf(buffer.ptr, message, lst);
		va_end(lst);
		
		if (!mCurrentLineIndented)
		{
			this.mInnerFile.write(this.mCurrentIndentString);
			this.mCurrentLineIndented = true;
		}
		this.mInnerFile.write(buffer[0..strlen(buffer.ptr)]);
		this.mInnerFile.write("\n");
		this.mCurrentLineIndented = false;
		Flush();
	}
	
}
