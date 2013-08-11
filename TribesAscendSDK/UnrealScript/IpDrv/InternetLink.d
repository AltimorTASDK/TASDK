module UnrealScript.IpDrv.InternetLink;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface InternetLink : Info
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33137], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33139], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33146], params.ptr, cast(void*)0);
	}
	int GetLastError()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33148], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString IpAddrToString(InternetLink.IpAddr Arg)
	{
		ubyte params[20];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33150], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool StringToIpAddr(ScriptString Str, InternetLink.IpAddr* Addr)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		*cast(InternetLink.IpAddr*)&params[12] = *Addr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33153], params.ptr, cast(void*)0);
		*Addr = *cast(InternetLink.IpAddr*)&params[12];
		return *cast(bool*)&params[20];
	}
	void GetLocalIP(InternetLink.IpAddr* Arg)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = *Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33157], params.ptr, cast(void*)0);
		*Arg = *cast(InternetLink.IpAddr*)params.ptr;
	}
	void Resolved(InternetLink.IpAddr Addr)
	{
		ubyte params[8];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Addr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33159], params.ptr, cast(void*)0);
	}
	void ResolveFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33161], cast(void*)0, cast(void*)0);
	}
}
