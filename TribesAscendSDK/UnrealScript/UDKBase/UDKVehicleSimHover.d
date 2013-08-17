module UnrealScript.UDKBase.UDKVehicleSimHover;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleSimChopper;

extern(C++) interface UDKVehicleSimHover : UDKVehicleSimChopper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKVehicleSimHover")); }
	private static __gshared UDKVehicleSimHover mDefaultProperties;
	@property final static UDKVehicleSimHover DefaultProperties() { mixin(MGDPC("UDKVehicleSimHover", "UDKVehicleSimHover UDKBase.Default__UDKVehicleSimHover")); }
	@property final
	{
		bool bUnPoweredDriving() { mixin(MGBPC(308, 0x8)); }
		bool bUnPoweredDriving(bool val) { mixin(MSBPC(308, 0x8)); }
		bool bCanClimbSlopes() { mixin(MGBPC(308, 0x4)); }
		bool bCanClimbSlopes(bool val) { mixin(MSBPC(308, 0x4)); }
		bool bRepulsorCollisionEnabled() { mixin(MGBPC(308, 0x2)); }
		bool bRepulsorCollisionEnabled(bool val) { mixin(MSBPC(308, 0x2)); }
		bool bDisableWheelsWhenOff() { mixin(MGBPC(308, 0x1)); }
		bool bDisableWheelsWhenOff(bool val) { mixin(MSBPC(308, 0x1)); }
	}
}
