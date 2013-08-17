module UnrealScript.TribesGame.TrSVehicleSimHover;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleSimChopper;
import UnrealScript.UDKBase.UDKVehicleSimHover;

extern(C++) interface TrSVehicleSimHover : UDKVehicleSimHover
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSVehicleSimHover")); }
	private static __gshared TrSVehicleSimHover mDefaultProperties;
	@property final static TrSVehicleSimHover DefaultProperties() { mixin(MGDPC("TrSVehicleSimHover", "TrSVehicleSimHover TribesGame.Default__TrSVehicleSimHover")); }
	@property final
	{
		@property final auto ref UDKVehicleSimChopper.AnglePID RollGain() { mixin(MGPC("UDKVehicleSimChopper.AnglePID", 312)); }
		bool bShouldStabilizeRotation() { mixin(MGBPC(332, 0x1)); }
		bool bShouldStabilizeRotation(bool val) { mixin(MSBPC(332, 0x1)); }
	}
}
