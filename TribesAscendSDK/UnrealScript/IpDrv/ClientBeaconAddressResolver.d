module UnrealScript.IpDrv.ClientBeaconAddressResolver;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ClientBeaconAddressResolver : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.ClientBeaconAddressResolver")); }
	private static __gshared ClientBeaconAddressResolver mDefaultProperties;
	@property final static ClientBeaconAddressResolver DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ClientBeaconAddressResolver)("ClientBeaconAddressResolver IpDrv.Default__ClientBeaconAddressResolver")); }
	@property final auto ref
	{
		ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
		int BeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
