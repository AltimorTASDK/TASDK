module UnrealScript.IpDrv.ImageServer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebApplication;

extern(C++) interface ImageServer : WebApplication
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.ImageServer")()); }
	private static __gshared ImageServer mDefaultProperties;
	@property final static ImageServer DefaultProperties() { mixin(MGDPC!(ImageServer, "ImageServer IpDrv.Default__ImageServer")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mQuery;
		public @property static final ScriptFunction Query() { mixin(MGF!("mQuery", "Function IpDrv.ImageServer.Query")()); }
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
