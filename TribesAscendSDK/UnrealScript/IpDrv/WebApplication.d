module UnrealScript.IpDrv.WebApplication;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebServer;

extern(C++) interface WebApplication : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.WebApplication")()); }
	private static __gshared WebApplication mDefaultProperties;
	@property final static WebApplication DefaultProperties() { mixin(MGDPC!(WebApplication, "WebApplication IpDrv.Default__WebApplication")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mCleanup;
			ScriptFunction mCleanupApp;
			ScriptFunction mPreQuery;
			ScriptFunction mQuery;
			ScriptFunction mPostQuery;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function IpDrv.WebApplication.Init")()); }
			ScriptFunction Cleanup() { mixin(MGF!("mCleanup", "Function IpDrv.WebApplication.Cleanup")()); }
			ScriptFunction CleanupApp() { mixin(MGF!("mCleanupApp", "Function IpDrv.WebApplication.CleanupApp")()); }
			ScriptFunction PreQuery() { mixin(MGF!("mPreQuery", "Function IpDrv.WebApplication.PreQuery")()); }
			ScriptFunction Query() { mixin(MGF!("mQuery", "Function IpDrv.WebApplication.Query")()); }
			ScriptFunction PostQuery() { mixin(MGF!("mPostQuery", "Function IpDrv.WebApplication.PostQuery")()); }
		}
	}
	@property final auto ref
	{
		ScriptString Path() { mixin(MGPC!("ScriptString", 68)()); }
		// WARNING: Property 'WebServer' has the same name as a defined type!
		// WARNING: Property 'WorldInfo' has the same name as a defined type!
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Cleanup, cast(void*)0, cast(void*)0);
	}
	void CleanupApp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupApp, cast(void*)0, cast(void*)0);
	}
	bool PreQuery(WebRequest Request, WebResponse Response)
	{
		ubyte params[12];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Query(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(Functions.Query, params.ptr, cast(void*)0);
	}
	void PostQuery(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostQuery, params.ptr, cast(void*)0);
	}
}
