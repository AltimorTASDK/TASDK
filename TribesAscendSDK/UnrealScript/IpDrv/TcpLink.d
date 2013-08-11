module UnrealScript.IpDrv.TcpLink;

import ScriptClasses;
import UnrealScript.IpDrv.InternetLink;

extern(C++) interface TcpLink : InternetLink
{
	enum ELinkState : ubyte
	{
		STATE_Initialized = 0,
		STATE_Ready = 1,
		STATE_Listening = 2,
		STATE_Connecting = 3,
		STATE_Connected = 4,
		STATE_ListenClosePending = 5,
		STATE_ConnectClosePending = 6,
		STATE_ListenClosing = 7,
		STATE_ConnectClosing = 8,
		STATE_MAX = 9,
	}
	public @property final auto ref ScriptArray!(ubyte) SendFIFO() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptString RecvBuf() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptClass AcceptClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref InternetLink.IpAddr RemoteAddr() { return *cast(InternetLink.IpAddr*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref TcpLink.ELinkState LinkState() { return *cast(TcpLink.ELinkState*)(cast(size_t)cast(void*)this + 500); }
	final int BindPort(int PortNum, bool bUseNextAvailable)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PortNum;
		*cast(bool*)&params[4] = bUseNextAvailable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34054], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool Listen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34058], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Open(InternetLink.IpAddr Addr)
	{
		ubyte params[12];
		params[] = 0;
		*cast(InternetLink.IpAddr*)params.ptr = Addr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34060], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Close()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34063], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsConnected()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34065], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int SendText(ScriptString Str)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Str;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34067], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int SendBinary(int Count, ubyte B)
	{
		ubyte params[264];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34070], params.ptr, cast(void*)0);
		return *cast(int*)&params[260];
	}
	final int ReadText(ScriptString* Str)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Str;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34074], params.ptr, cast(void*)0);
		*Str = *cast(ScriptString*)params.ptr;
		return *cast(int*)&params[12];
	}
	final int ReadBinary(int Count, ubyte* B)
	{
		ubyte params[264];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = *B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34077], params.ptr, cast(void*)0);
		*B = params[4];
		return *cast(int*)&params[260];
	}
	final void Accepted()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34081], cast(void*)0, cast(void*)0);
	}
	final void Opened()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34082], cast(void*)0, cast(void*)0);
	}
	final void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34083], cast(void*)0, cast(void*)0);
	}
	final void ReceivedText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34084], params.ptr, cast(void*)0);
	}
	final void ReceivedLine(ScriptString Line)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Line;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34086], params.ptr, cast(void*)0);
	}
	final void ReceivedBinary(int Count, ubyte B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34088], params.ptr, cast(void*)0);
	}
}
