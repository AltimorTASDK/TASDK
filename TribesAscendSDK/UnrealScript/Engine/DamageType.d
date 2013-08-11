module UnrealScript.Engine.DamageType;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface DamageType : UObject
{
	public @property final auto ref ForceFeedbackWaveform DamagedFFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float FracturedMeshDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ForceFeedbackWaveform KilledFFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float VehicleMomentumScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float VehicleDamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float RadialDamageImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float KDeathUpKick() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float KDeathVel() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float KDamageImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bRadialDamageVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool bRadialDamageVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool bCausesFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bCausesFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bExtraMomentumZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bExtraMomentumZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bCausedByWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bCausedByWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bArmorStops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bArmorStops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final float VehicleDamageScalingFor(Vehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13630], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
