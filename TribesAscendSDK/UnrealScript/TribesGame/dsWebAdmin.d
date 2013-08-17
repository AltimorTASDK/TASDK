module UnrealScript.TribesGame.dsWebAdmin;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.WebRequest;
import UnrealScript.IpDrv.WebResponse;
import UnrealScript.IpDrv.WebApplication;

extern(C++) interface dsWebAdmin : WebApplication
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.dsWebAdmin")()); }
	private static __gshared dsWebAdmin mDefaultProperties;
	@property final static dsWebAdmin DefaultProperties() { mixin(MGDPC!(dsWebAdmin, "dsWebAdmin TribesGame.Default__dsWebAdmin")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mQuery;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.dsWebAdmin.Init")()); }
			ScriptFunction Query() { mixin(MGF!("mQuery", "Function TribesGame.dsWebAdmin.Query")()); }
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
