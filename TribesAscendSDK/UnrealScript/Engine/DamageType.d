module UnrealScript.Engine.DamageType;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface DamageType : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DamageType")); }
	private static __gshared DamageType mDefaultProperties;
	@property final static DamageType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DamageType)("DamageType Engine.Default__DamageType")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mVehicleDamageScalingFor;
		public @property static final ScriptFunction VehicleDamageScalingFor() { return mVehicleDamageScalingFor ? mVehicleDamageScalingFor : (mVehicleDamageScalingFor = ScriptObject.Find!(ScriptFunction)("Function Engine.DamageType.VehicleDamageScalingFor")); }
	}
	@property final
	{
		auto ref
		{
			ForceFeedbackWaveform DamagedFFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 88); }
			float FracturedMeshDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			ForceFeedbackWaveform KilledFFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 92); }
			float VehicleMomentumScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float VehicleDamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float RadialDamageImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float KDeathUpKick() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			float KDeathVel() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float KDamageImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bRadialDamageVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool bRadialDamageVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bCausesFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bCausesFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bExtraMomentumZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bExtraMomentumZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bCausedByWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bCausedByWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bArmorStops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bArmorStops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
	final static float VehicleDamageScalingFor(Vehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		StaticClass.ProcessEvent(Functions.VehicleDamageScalingFor, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
