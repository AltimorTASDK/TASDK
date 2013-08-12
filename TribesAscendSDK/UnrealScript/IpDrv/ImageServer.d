module UnrealScript.IpDrv.ImageServer;

import ScriptClasses;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebApplication;

extern(C++) interface ImageServer : WebApplication
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.ImageServer")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mQuery;
		public @property static final ScriptFunction Query() { return mQuery ? mQuery : (mQuery = ScriptObject.Find!(ScriptFunction)("Function IpDrv.ImageServer.Query")); }
	}
	final void Query(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(Functions.Query, params.ptr, cast(void*)0);
	}
}
