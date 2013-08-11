module UnrealScript.UDKBase.UDKAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByVehicle : UDKAnimBlendBase
{
	public @property final auto ref Vehicle LastVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 300); }
	public @property final bool bLastPawnDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
	public @property final bool bLastPawnDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	final void UpdateVehicleState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34552], cast(void*)0, cast(void*)0);
	}
}
