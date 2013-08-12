module UnrealScript.TribesGame.TrSVehicleSimHover;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleSimChopper;
import UnrealScript.UDKBase.UDKVehicleSimHover;

extern(C++) interface TrSVehicleSimHover : UDKVehicleSimHover
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSVehicleSimHover")); }
	@property final
	{
		@property final auto ref UDKVehicleSimChopper.AnglePID RollGain() { return *cast(UDKVehicleSimChopper.AnglePID*)(cast(size_t)cast(void*)this + 312); }
		bool bShouldStabilizeRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 332) & 0x1) != 0; }
		bool bShouldStabilizeRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 332) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 332) &= ~0x1; } return val; }
	}
}
