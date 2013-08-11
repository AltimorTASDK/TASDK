module UnrealScript.IpDrv.ClientBeaconAddressResolver;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ClientBeaconAddressResolver : UObject
{
	public @property final auto ref ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int BeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
