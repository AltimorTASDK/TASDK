module UnrealScript.TribesGame.TrVehicleSimChopper;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleSimChopper;

extern(C++) interface TrVehicleSimChopper : UDKVehicleSimChopper
{
public extern(D):
	@property final
	{
		auto ref
		{
			UDKVehicleSimChopper.AnglePID RollGain() { return *cast(UDKVehicleSimChopper.AnglePID*)(cast(size_t)cast(void*)this + 348); }
			UDKVehicleSimChopper.AnglePID PitchGain() { return *cast(UDKVehicleSimChopper.AnglePID*)(cast(size_t)cast(void*)this + 328); }
			int m_nLastYawInput() { return *cast(int*)(cast(size_t)cast(void*)this + 320); }
			int m_nLastPitchInput() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
			float ReverseSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float HoverHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
		}
		bool bShouldStabilizeRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x2) != 0; }
		bool bShouldStabilizeRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x2; } return val; }
		bool m_bInvertFlight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x1) != 0; }
		bool m_bInvertFlight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x1; } return val; }
	}
	final void SetVehicleControls(bool bInvert)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvert;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114831], params.ptr, cast(void*)0);
	}
}
