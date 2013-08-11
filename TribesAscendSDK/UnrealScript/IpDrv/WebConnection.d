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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34102], cast(void*)0, cast(void*)0);
	}
	void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34104], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34105], cast(void*)0, cast(void*)0);
	}
	void ReceivedText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34106], params.ptr, cast(void*)0);
	}
	void ReceivedLine(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34110], params.ptr, cast(void*)0);
	}
	void ProcessHead(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34112], params.ptr, cast(void*)0);
	}
	void ProcessGet(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34114], params.ptr, cast(void*)0);
	}
	void ProcessPost(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34122], params.ptr, cast(void*)0);
	}
	void CreateResponseObject()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34125], cast(void*)0, cast(void*)0);
	}
	void EndOfHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34129], cast(void*)0, cast(void*)0);
	}
	void CheckRawBytes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34131], cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34133], cast(void*)0, cast(void*)0);
	}
	bool IsHanging()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34134], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
