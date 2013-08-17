module UnrealScript.IpDrv.WebConnection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebApplication;
import UnrealScript.IpDrv.TcpLink;
import UnrealScript.IpDrv.WebServer;

extern(C++) interface WebConnection : TcpLink
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.WebConnection")()); }
	private static __gshared WebConnection mDefaultProperties;
	@property final static WebConnection DefaultProperties() { mixin(MGDPC!(WebConnection, "WebConnection IpDrv.Default__WebConnection")()); }
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
			ScriptFunction Accepted() { mixin(MGF!("mAccepted", "Function IpDrv.WebConnection.Accepted")()); }
			ScriptFunction Closed() { mixin(MGF!("mClosed", "Function IpDrv.WebConnection.Closed")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function IpDrv.WebConnection.Timer")()); }
			ScriptFunction ReceivedText() { mixin(MGF!("mReceivedText", "Function IpDrv.WebConnection.ReceivedText")()); }
			ScriptFunction ReceivedLine() { mixin(MGF!("mReceivedLine", "Function IpDrv.WebConnection.ReceivedLine")()); }
			ScriptFunction ProcessHead() { mixin(MGF!("mProcessHead", "Function IpDrv.WebConnection.ProcessHead")()); }
			ScriptFunction ProcessGet() { mixin(MGF!("mProcessGet", "Function IpDrv.WebConnection.ProcessGet")()); }
			ScriptFunction ProcessPost() { mixin(MGF!("mProcessPost", "Function IpDrv.WebConnection.ProcessPost")()); }
			ScriptFunction CreateResponseObject() { mixin(MGF!("mCreateResponseObject", "Function IpDrv.WebConnection.CreateResponseObject")()); }
			ScriptFunction EndOfHeaders() { mixin(MGF!("mEndOfHeaders", "Function IpDrv.WebConnection.EndOfHeaders")()); }
			ScriptFunction CheckRawBytes() { mixin(MGF!("mCheckRawBytes", "Function IpDrv.WebConnection.CheckRawBytes")()); }
			ScriptFunction Cleanup() { mixin(MGF!("mCleanup", "Function IpDrv.WebConnection.Cleanup")()); }
			ScriptFunction IsHanging() { mixin(MGF!("mIsHanging", "Function IpDrv.WebConnection.IsHanging")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ConnID() { mixin(MGPC!(int, 584)()); }
			int MaxLineLength() { mixin(MGPC!(int, 580)()); }
			int MaxValueLength() { mixin(MGPC!(int, 576)()); }
			int RawBytesExpecting() { mixin(MGPC!(int, 572)()); }
			WebApplication Application() { mixin(MGPC!(WebApplication, 564)()); }
			WebResponse Response() { mixin(MGPC!(WebResponse, 560)()); }
			WebRequest Request() { mixin(MGPC!(WebRequest, 556)()); }
			ScriptString ReceivedData() { mixin(MGPC!(ScriptString, 544)()); }
			// WARNING: Property 'WebServer' has the same name as a defined type!
		}
		bool bDelayCleanup() { mixin(MGBPC!(568, 0x1)()); }
		bool bDelayCleanup(bool val) { mixin(MSBPC!(568, 0x1)()); }
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
