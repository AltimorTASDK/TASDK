module UnrealScript.IpDrv.ClientBeaconAddressResolver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ClientBeaconAddressResolver : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.ClientBeaconAddressResolver")()); }
	private static __gshared ClientBeaconAddressResolver mDefaultProperties;
	@property final static ClientBeaconAddressResolver DefaultProperties() { mixin(MGDPC!(ClientBeaconAddressResolver, "ClientBeaconAddressResolver IpDrv.Default__ClientBeaconAddressResolver")()); }
	@property final auto ref
	{
		ScriptName BeaconName() { mixin(MGPC!("ScriptName", 64)()); }
		int BeaconPort() { mixin(MGPC!("int", 60)()); }
	}
}
