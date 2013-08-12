module UnrealScript.IpDrv.WebConnection;

import ScriptClasses;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebApplication;
import UnrealScript.IpDrv.TcpLink;
import UnrealScript.IpDrv.WebServer;

extern(C++) interface WebConnection : TcpLink
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.WebConnection")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAccepted;
			ScriptFunction mClosed;
			ScriptFunction mTimer;
			ScriptFunction mReceivedText;
			ScriptFunction mReceivedLine;
			ScriptFunction mProcessHead;
			ScriptFunction mProcessGet;
			ScriptFunction mProcessPost;
			ScriptFunction mCreateResponseObject;
			ScriptFunction mEndOfHeaders;
			ScriptFunction mCheckRawBytes;
			ScriptFunction mCleanup;
			ScriptFunction mIsHanging;
		}
		public @property static final
		{
			ScriptFunction Accepted() { return mAccepted ? mAccepted : (mAccepted = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.Accepted")); }
			ScriptFunction Closed() { return mClosed ? mClosed : (mClosed = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.Closed")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.Timer")); }
			ScriptFunction ReceivedText() { return mReceivedText ? mReceivedText : (mReceivedText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.ReceivedText")); }
			ScriptFunction ReceivedLine() { return mReceivedLine ? mReceivedLine : (mReceivedLine = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.ReceivedLine")); }
			ScriptFunction ProcessHead() { return mProcessHead ? mProcessHead : (mProcessHead = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.ProcessHead")); }
			ScriptFunction ProcessGet() { return mProcessGet ? mProcessGet : (mProcessGet = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.ProcessGet")); }
			ScriptFunction ProcessPost() { return mProcessPost ? mProcessPost : (mProcessPost = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.ProcessPost")); }
			ScriptFunction CreateResponseObject() { return mCreateResponseObject ? mCreateResponseObject : (mCreateResponseObject = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.CreateResponseObject")); }
			ScriptFunction EndOfHeaders() { return mEndOfHeaders ? mEndOfHeaders : (mEndOfHeaders = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.EndOfHeaders")); }
			ScriptFunction CheckRawBytes() { return mCheckRawBytes ? mCheckRawBytes : (mCheckRawBytes = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.CheckRawBytes")); }
			ScriptFunction Cleanup() { return mCleanup ? mCleanup : (mCleanup = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.Cleanup")); }
			ScriptFunction IsHanging() { return mIsHanging ? mIsHanging : (mIsHanging = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebConnection.IsHanging")); }
		}
	}
	@property final
	{
		auto ref
		{
			int ConnID() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			int MaxLineLength() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
			int MaxValueLength() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
			int RawBytesExpecting() { return *cast(int*)(cast(size_t)cast(void*)this + 572); }
			WebApplication Application() { return *cast(WebApplication*)(cast(size_t)cast(void*)this + 564); }
			WebResponse Response() { return *cast(WebResponse*)(cast(size_t)cast(void*)this + 560); }
			WebRequest Request() { return *cast(WebRequest*)(cast(size_t)cast(void*)this + 556); }
			ScriptString ReceivedData() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 544); }
			// WARNING: Property 'WebServer' has the same name as a defined type!
		}
		bool bDelayCleanup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
		bool bDelayCleanup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
	}
final:
	void Accepted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Accepted, cast(void*)0, cast(void*)0);
	}
	void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Closed, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void ReceivedText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedText, params.ptr, cast(void*)0);
	}
	void ReceivedLine(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedLine, params.ptr, cast(void*)0);
	}
	void ProcessHead(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessHead, params.ptr, cast(void*)0);
	}
	void ProcessGet(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessGet, params.ptr, cast(void*)0);
	}
	void ProcessPost(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessPost, params.ptr, cast(void*)0);
	}
	void CreateResponseObject()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateResponseObject, cast(void*)0, cast(void*)0);
	}
	void EndOfHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndOfHeaders, cast(void*)0, cast(void*)0);
	}
	void CheckRawBytes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRawBytes, cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Cleanup, cast(void*)0, cast(void*)0);
	}
	bool IsHanging()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsHanging, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
