module UnrealScript.IpDrv.HelloWeb;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebApplication;

extern(C++) interface HelloWeb : WebApplication
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.HelloWeb")()); }
	private static __gshared HelloWeb mDefaultProperties;
	@property final static HelloWeb DefaultProperties() { mixin(MGDPC!(HelloWeb, "HelloWeb IpDrv.Default__HelloWeb")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mQuery;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function IpDrv.HelloWeb.Init")()); }
			ScriptFunction Query() { mixin(MGF!("mQuery", "Function IpDrv.HelloWeb.Query")()); }
		}
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void Query(WebRequest Request, WebResponse Response)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WebRequest*)params.ptr = Request;
		*cast(WebResponse*)&params[4] = Response;
		(cast(ScriptObject)this).ProcessEvent(Functions.Query, params.ptr, cast(void*)0);
	}
}
