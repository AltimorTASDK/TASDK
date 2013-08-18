module UnrealScript.IpDrv.InternetLink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface InternetLink : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.InternetLink")); }
	private static __gshared InternetLink mDefaultProperties;
	@property final static InternetLink DefaultProperties() { mixin(MGDPC("InternetLink", "InternetLink IpDrv.Default__InternetLink")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsDataPending;
			ScriptFunction mParseURL;
			ScriptFunction mResolve;
			ScriptFunction mGetLastError;
			ScriptFunction mIpAddrToString;
			ScriptFunction mStringToIpAddr;
			ScriptFunction mGetLocalIP;
			ScriptFunction mResolved;
			ScriptFunction mResolveFailed;
		}
		public @property static final
		{
			ScriptFunction IsDataPending() { mixin(MGF("mIsDataPending", "Function IpDrv.InternetLink.IsDataPending")); }
			ScriptFunction ParseURL() { mixin(MGF("mParseURL", "Function IpDrv.InternetLink.ParseURL")); }
			ScriptFunction Resolve() { mixin(MGF("mResolve", "Function IpDrv.InternetLink.Resolve")); }
			ScriptFunction GetLastError() { mixin(MGF("mGetLastError", "Function IpDrv.InternetLink.GetLastError")); }
			ScriptFunction IpAddrToString() { mixin(MGF("mIpAddrToString", "Function IpDrv.InternetLink.IpAddrToString")); }
			ScriptFunction StringToIpAddr() { mixin(MGF("mStringToIpAddr", "Function IpDrv.InternetLink.StringToIpAddr")); }
			ScriptFunction GetLocalIP() { mixin(MGF("mGetLocalIP", "Function IpDrv.InternetLink.GetLocalIP")); }
			ScriptFunction Resolved() { mixin(MGF("mResolved", "Function IpDrv.InternetLink.Resolved")); }
			ScriptFunction ResolveFailed() { mixin(MGF("mResolveFailed", "Function IpDrv.InternetLink.ResolveFailed")); }
		}
	}
	enum ELinkMode : ubyte
	{
		MODE_Text = 0,
		MODE_Line = 1,
		MODE_Binary = 2,
		MODE_MAX = 3,
	}
	enum EReceiveMode : ubyte
	{
		RMODE_Manual = 0,
		RMODE_Event = 1,
		RMODE_MAX = 2,
	}
	enum ELineMode : ubyte
	{
		LMODE_auto = 0,
		LMODE_DOS = 1,
		LMODE_UNIX = 2,
		LMODE_MAC = 3,
		LMODE_MAX = 4,
	}
	struct IpAddr
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.InternetLink.IpAddr")); }
		@property final auto ref
		{
			int Port() { mixin(MGPS("int", 4)); }
			int Addr() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		int DataPending() { mixin(MGPC("int", 496)); }
		Pointer PrivateResolveInfo() { mixin(MGPC("Pointer", 492)); }
		Pointer RemoteSocket() { mixin(MGPC("Pointer", 488)); }
		int Port() { mixin(MGPC("int", 484)); }
		Pointer Socket() { mixin(MGPC("Pointer", 480)); }
		InternetLink.EReceiveMode ReceiveMode() { mixin(MGPC("InternetLink.EReceiveMode", 479)); }
		InternetLink.ELineMode OutLineMode() { mixin(MGPC("InternetLink.ELineMode", 478)); }
		InternetLink.ELinkMode LinkMode() { mixin(MGPC("InternetLink.ELinkMode", 476)); }
		InternetLink.ELineMode InLineMode() { mixin(MGPC("InternetLink.ELineMode", 477)); }
	}
final:
	bool IsDataPending()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDataPending, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ParseURL(ScriptString pURL, ref ScriptString Addr, ref int PortNum, ref ScriptString LevelName, ref ScriptString EntryName)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(ScriptString*)&params[12] = Addr;
		*cast(int*)&params[24] = PortNum;
		*cast(ScriptString*)&params[28] = LevelName;
		*cast(ScriptString*)&params[40] = EntryName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseURL, params.ptr, cast(void*)0);
		Addr = *cast(ScriptString*)&params[12];
		PortNum = *cast(int*)&params[24];
		LevelName = *cast(ScriptString*)&params[28];
		EntryName = *cast(ScriptString*)&params[40];
		return *cast(bool*)&params[52];
	}
	void Resolve(ScriptString Domain)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Domain;
		(cast(ScriptObject)this).ProcessEvent(Functions.Resolve, params.ptr, cast(void*)0);
	}
	int GetLastError()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLastError, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString IpAddrToString(InternetLink.IpAddr Arg)
	{
		ubyte params[20];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.IpAddrToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool StringToIpAddr(ScriptString Str, ref InternetLink.IpAddr Addr)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		*cast(InternetLink.IpAddr*)&params[12] = Addr;
		(cast(ScriptObject)this).ProcessEvent(Functions.StringToIpAddr, params.ptr, cast(void*)0);
		Addr = *cast(InternetLink.IpAddr*)&params[12];
		return *cast(bool*)&params[20];
	}
	void GetLocalIP(ref InternetLink.IpAddr Arg)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalIP, params.ptr, cast(void*)0);
		Arg = *cast(InternetLink.IpAddr*)params.ptr;
	}
	void Resolved(InternetLink.IpAddr Addr)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Addr;
		(cast(ScriptObject)this).ProcessEvent(Functions.Resolved, params.ptr, cast(void*)0);
	}
	void ResolveFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveFailed, cast(void*)0, cast(void*)0);
	}
}
