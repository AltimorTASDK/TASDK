module UnrealScript.Engine.DamageType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface DamageType : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DamageType")()); }
	private static __gshared DamageType mDefaultProperties;
	@property final static DamageType DefaultProperties() { mixin(MGDPC!(DamageType, "DamageType Engine.Default__DamageType")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mVehicleDamageScalingFor;
		public @property static final ScriptFunction VehicleDamageScalingFor() { mixin(MGF!("mVehicleDamageScalingFor", "Function Engine.DamageType.VehicleDamageScalingFor")()); }
	}
	@property final
	{
		auto ref
		{
			ForceFeedbackWaveform DamagedFFWaveform() { mixin(MGPC!("ForceFeedbackWaveform", 88)()); }
			float FracturedMeshDamage() { mixin(MGPC!("float", 96)()); }
			ForceFeedbackWaveform KilledFFWaveform() { mixin(MGPC!("ForceFeedbackWaveform", 92)()); }
			float VehicleMomentumScaling() { mixin(MGPC!("float", 84)()); }
			float VehicleDamageScaling() { mixin(MGPC!("float", 80)()); }
			float RadialDamageImpulse() { mixin(MGPC!("float", 76)()); }
			float KDeathUpKick() { mixin(MGPC!("float", 72)()); }
			float KDeathVel() { mixin(MGPC!("float", 68)()); }
			float KDamageImpulse() { mixin(MGPC!("float", 64)()); }
		}
		bool bRadialDamageVelChange() { mixin(MGBPC!(60, 0x10)()); }
		bool bRadialDamageVelChange(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bCausesFracture() { mixin(MGBPC!(60, 0x8)()); }
		bool bCausesFracture(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool bExtraMomentumZ() { mixin(MGBPC!(60, 0x4)()); }
		bool bExtraMomentumZ(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bCausedByWorld() { mixin(MGBPC!(60, 0x2)()); }
		bool bCausedByWorld(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bArmorStops() { mixin(MGBPC!(60, 0x1)()); }
		bool bArmorStops(bool val) { mixin(MSBPC!(60, 0x1)()); }
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
