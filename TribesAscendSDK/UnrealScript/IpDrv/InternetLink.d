module UnrealScript.IpDrv.InternetLink;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface InternetLink : Info
{
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
		public @property final auto ref int Port() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Port[4];
		public @property final auto ref int Addr() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Addr[4];
	}
	public @property final auto ref int DataPending() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref UObject.Pointer PrivateResolveInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Pointer RemoteSocket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref int Port() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref InternetLink.EReceiveMode ReceiveMode() { return *cast(InternetLink.EReceiveMode*)(cast(size_t)cast(void*)this + 479); }
	public @property final auto ref InternetLink.ELineMode OutLineMode() { return *cast(InternetLink.ELineMode*)(cast(size_t)cast(void*)this + 478); }
	public @property final auto ref InternetLink.ELinkMode LinkMode() { return *cast(InternetLink.ELinkMode*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref InternetLink.ELineMode InLineMode() { return *cast(InternetLink.ELineMode*)(cast(size_t)cast(void*)this + 477); }
	final bool IsDataPending()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33137], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ParseURL(ScriptString URL, ScriptString* Addr, int* PortNum, ScriptString* LevelName, ScriptString* EntryName)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		*cast(ScriptString*)&params[12] = *Addr;
		*cast(int*)&params[24] = *PortNum;
		*cast(ScriptString*)&params[28] = *LevelName;
		*cast(ScriptString*)&params[40] = *EntryName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33139], params.ptr, cast(void*)0);
		*Addr = *cast(ScriptString*)&params[12];
		*PortNum = *cast(int*)&params[24];
		*LevelName = *cast(ScriptString*)&params[28];
		*EntryName = *cast(ScriptString*)&params[40];
		return *cast(bool*)&params[52];
	}
	final void Resolve(ScriptString Domain)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Domain;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33146], params.ptr, cast(void*)0);
	}
	final int GetLastError()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33148], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final ScriptString IpAddrToString(InternetLink.IpAddr Arg)
	{
		ubyte params[20];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33150], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final bool StringToIpAddr(ScriptString Str, InternetLink.IpAddr* Addr)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		*cast(InternetLink.IpAddr*)&params[12] = *Addr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33153], params.ptr, cast(void*)0);
		*Addr = *cast(InternetLink.IpAddr*)&params[12];
		return *cast(bool*)&params[20];
	}
	final void GetLocalIP(InternetLink.IpAddr* Arg)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33157], params.ptr, cast(void*)0);
		*Arg = *cast(InternetLink.IpAddr*)params.ptr;
	}
	final void Resolved(InternetLink.IpAddr Addr)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Addr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33159], params.ptr, cast(void*)0);
	}
	final void ResolveFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33161], cast(void*)0, cast(void*)0);
	}
}
