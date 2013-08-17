module UnrealScript.PlatformCommon.TgNetConn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.TcpipConnection;

extern(C++) interface TgNetConn : TcpipConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class PlatformCommon.TgNetConn")); }
	private static __gshared TgNetConn mDefaultProperties;
	@property final static TgNetConn DefaultProperties() { mixin(MGDPC("TgNetConn", "TgNetConn PlatformCommon.Default__TgNetConn")); }
}
