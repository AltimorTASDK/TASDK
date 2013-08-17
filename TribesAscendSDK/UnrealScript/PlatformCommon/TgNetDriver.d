module UnrealScript.PlatformCommon.TgNetDriver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.IpDrv.TcpNetDriver;

extern(C++) interface TgNetDriver : TcpNetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class PlatformCommon.TgNetDriver")()); }
	private static __gshared TgNetDriver mDefaultProperties;
	@property final static TgNetDriver DefaultProperties() { mixin(MGDPC!(TgNetDriver, "TgNetDriver PlatformCommon.Default__TgNetDriver")()); }
}
