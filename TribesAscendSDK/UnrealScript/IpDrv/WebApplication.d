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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.WebApplication")); }
	private static __gshared WebApplication mDefaultProperties;
	@property final static WebApplication DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(WebApplication)("WebApplication IpDrv.Default__WebApplication")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.Init")); }
			ScriptFunction Cleanup() { return mCleanup ? mCleanup : (mCleanup = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.Cleanup")); }
			ScriptFunction CleanupApp() { return mCleanupApp ? mCleanupApp : (mCleanupApp = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.CleanupApp")); }
			ScriptFunction PreQuery() { return mPreQuery ? mPreQuery : (mPreQuery = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.PreQuery")); }
			ScriptFunction Query() { return mQuery ? mQuery : (mQuery = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.Query")); }
			ScriptFunction PostQuery() { return mPostQuery ? mPostQuery : (mPostQuery = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebApplication.PostQuery")); }
		}
	}
	@property final auto ref
	{
		ScriptString Path() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
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
