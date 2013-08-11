module UnrealScript.IpDrv.WebApplication;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebServer;

extern(C++) interface WebApplication : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString Path() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		// WARNING: Property 'WebServer' has the same name as a defined type!
		// WARNING: Property 'WorldInfo' has the same name as a defined type!
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33079], cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33080], cast(void*)0, cast(void*)0);
	}
	void CleanupApp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33081], cast(void*)0, cast(void*)0);
	}
	bool PreQuery(WebRequest Request, WebResponse Response)
	{
		ubyte params[12];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33082], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Query(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33086], params.ptr, cast(void*)0);
	}
	void PostQuery(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33089], params.ptr, cast(void*)0);
	}
}
