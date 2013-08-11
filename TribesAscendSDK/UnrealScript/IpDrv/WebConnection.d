module UnrealScript.IpDrv.WebConnection;

import ScriptClasses;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebApplication;
import UnrealScript.IpDrv.TcpLink;
import UnrealScript.IpDrv.WebServer;

extern(C++) interface WebConnection : TcpLink
{
	public @property final auto ref int ConnID() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref int MaxLineLength() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref int MaxValueLength() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref int RawBytesExpecting() { return *cast(int*)(cast(size_t)cast(void*)this + 572); }
	public @property final bool bDelayCleanup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
	public @property final bool bDelayCleanup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
	public @property final auto ref WebApplication Application() { return *cast(WebApplication*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref WebResponse Response() { return *cast(WebResponse*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref WebRequest Request() { return *cast(WebRequest*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptString ReceivedData() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 544); }
	// WARNING: Property 'WebServer' has the same name as a defined type!
	final void Accepted()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34102], cast(void*)0, cast(void*)0);
	}
	final void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34104], cast(void*)0, cast(void*)0);
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34105], cast(void*)0, cast(void*)0);
	}
	final void ReceivedText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34106], params.ptr, cast(void*)0);
	}
	final void ReceivedLine(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34110], params.ptr, cast(void*)0);
	}
	final void ProcessHead(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34112], params.ptr, cast(void*)0);
	}
	final void ProcessGet(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34114], params.ptr, cast(void*)0);
	}
	final void ProcessPost(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34122], params.ptr, cast(void*)0);
	}
	final void CreateResponseObject()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34125], cast(void*)0, cast(void*)0);
	}
	final void EndOfHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34129], cast(void*)0, cast(void*)0);
	}
	final void CheckRawBytes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34131], cast(void*)0, cast(void*)0);
	}
	final void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34133], cast(void*)0, cast(void*)0);
	}
	final bool IsHanging()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34134], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
