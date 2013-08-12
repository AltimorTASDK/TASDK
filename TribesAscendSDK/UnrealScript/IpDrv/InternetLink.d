module UnrealScript.IpDrv.InternetLink;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface InternetLink : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.InternetLink")); }
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
			ScriptFunction IsDataPending() { return mIsDataPending ? mIsDataPending : (mIsDataPending = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.IsDataPending")); }
			ScriptFunction ParseURL() { return mParseURL ? mParseURL : (mParseURL = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.ParseURL")); }
			ScriptFunction Resolve() { return mResolve ? mResolve : (mResolve = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.Resolve")); }
			ScriptFunction GetLastError() { return mGetLastError ? mGetLastError : (mGetLastError = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.GetLastError")); }
			ScriptFunction IpAddrToString() { return mIpAddrToString ? mIpAddrToString : (mIpAddrToString = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.IpAddrToString")); }
			ScriptFunction StringToIpAddr() { return mStringToIpAddr ? mStringToIpAddr : (mStringToIpAddr = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.StringToIpAddr")); }
			ScriptFunction GetLocalIP() { return mGetLocalIP ? mGetLocalIP : (mGetLocalIP = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.GetLocalIP")); }
			ScriptFunction Resolved() { return mResolved ? mResolved : (mResolved = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.Resolved")); }
			ScriptFunction ResolveFailed() { return mResolveFailed ? mResolveFailed : (mResolveFailed = ScriptObject.Find!(ScriptFunction)("Function IpDrv.InternetLink.ResolveFailed")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.InternetLink.IpAddr")); }
		@property final auto ref
		{
			int Port() { return *cast(int*)(cast(size_t)&this + 4); }
			int Addr() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		int DataPending() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
		UObject.Pointer PrivateResolveInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 492); }
		UObject.Pointer RemoteSocket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 488); }
		int Port() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 480); }
		InternetLink.EReceiveMode ReceiveMode() { return *cast(InternetLink.EReceiveMode*)(cast(size_t)cast(void*)this + 479); }
		InternetLink.ELineMode OutLineMode() { return *cast(InternetLink.ELineMode*)(cast(size_t)cast(void*)this + 478); }
		InternetLink.ELinkMode LinkMode() { return *cast(InternetLink.ELinkMode*)(cast(size_t)cast(void*)this + 476); }
		InternetLink.ELineMode InLineMode() { return *cast(InternetLink.ELineMode*)(cast(size_t)cast(void*)this + 477); }
	}
final:
	bool IsDataPending()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDataPending, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ParseURL(ScriptString pURL, ScriptString* Addr, int* PortNum, ScriptString* LevelName, ScriptString* EntryName)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(ScriptString*)&params[12] = *Addr;
		*cast(int*)&params[24] = *PortNum;
		*cast(ScriptString*)&params[28] = *LevelName;
		*cast(ScriptString*)&params[40] = *EntryName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseURL, params.ptr, cast(void*)0);
		*Addr = *cast(ScriptString*)&params[12];
		*PortNum = *cast(int*)&params[24];
		*LevelName = *cast(ScriptString*)&params[28];
		*EntryName = *cast(ScriptString*)&params[40];
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
	bool StringToIpAddr(ScriptString Str, InternetLink.IpAddr* Addr)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		*cast(InternetLink.IpAddr*)&params[12] = *Addr;
		(cast(ScriptObject)this).ProcessEvent(Functions.StringToIpAddr, params.ptr, cast(void*)0);
		*Addr = *cast(InternetLink.IpAddr*)&params[12];
		return *cast(bool*)&params[20];
	}
	void GetLocalIP(InternetLink.IpAddr* Arg)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = *Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalIP, params.ptr, cast(void*)0);
		*Arg = *cast(InternetLink.IpAddr*)params.ptr;
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
