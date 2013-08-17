module UnrealScript.IpDrv.WebServer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.WebApplication;
import UnrealScript.Engine.Actor;
import UnrealScript.IpDrv.TcpLink;

extern(C++) interface WebServer : TcpLink
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.WebServer")()); }
	private static __gshared WebServer mDefaultProperties;
	@property final static WebServer DefaultProperties() { mixin(MGDPC!(WebServer, "WebServer IpDrv.Default__WebServer")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetApplication;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mGainedChild;
			ScriptFunction mLostChild;
		}
		public @property static final
		{
			ScriptFunction GetApplication() { mixin(MGF!("mGetApplication", "Function IpDrv.WebServer.GetApplication")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function IpDrv.WebServer.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function IpDrv.WebServer.Destroyed")()); }
			ScriptFunction GainedChild() { mixin(MGF!("mGainedChild", "Function IpDrv.WebServer.GainedChild")()); }
			ScriptFunction LostChild() { mixin(MGF!("mLostChild", "Function IpDrv.WebServer.LostChild")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ConnID() { mixin(MGPC!(int, 868)()); }
			int DefaultApplication() { mixin(MGPC!(int, 804)()); }
			ScriptString ApplicationPaths() { mixin(MGPC!(ScriptString, 672)()); }
			int ExpirationSeconds() { mixin(MGPC!(int, 808)()); }
			int ConnectionCount() { mixin(MGPC!(int, 864)()); }
			WebApplication ApplicationObjects() { mixin(MGPC!(WebApplication, 824)()); }
			ScriptString ServerURL() { mixin(MGPC!(ScriptString, 812)()); }
			int MaxConnections() { mixin(MGPC!(int, 800)()); }
			int ListenPort() { mixin(MGPC!(int, 796)()); }
			ScriptString Applications() { mixin(MGPC!(ScriptString, 552)()); }
			ScriptString ServerName() { mixin(MGPC!(ScriptString, 540)()); }
		}
		bool bEnabled() { mixin(MGBPC!(792, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(792, 0x1)()); }
	}
final:
	WebApplication GetApplication(ScriptString URI, ref ScriptString SubURI)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URI;
		*cast(ScriptString*)&params[12] = SubURI;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetApplication, params.ptr, cast(void*)0);
		*SubURI = *cast(ScriptString*)&params[12];
		return *cast(WebApplication*)&params[24];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void GainedChild(Actor C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GainedChild, params.ptr, cast(void*)0);
	}
	void LostChild(Actor C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.LostChild, params.ptr, cast(void*)0);
	}
}
