module UnrealScript.UDKBase.UDKVehicleWheel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SVehicleWheel;

extern(C++) interface UDKVehicleWheel : SVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKVehicleWheel")()); }
	private static __gshared UDKVehicleWheel mDefaultProperties;
	@property final static UDKVehicleWheel DefaultProperties() { mixin(MGDPC!(UDKVehicleWheel, "UDKVehicleWheel UDKBase.Default__UDKVehicleWheel")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetParticleEffect;
			ScriptFunction mOldEffectFinished;
		}
		public @property static final
		{
			ScriptFunction SetParticleEffect() { mixin(MGF!("mSetParticleEffect", "Function UDKBase.UDKVehicleWheel.SetParticleEffect")()); }
			ScriptFunction OldEffectFinished() { mixin(MGF!("mOldEffectFinished", "Function UDKBase.UDKVehicleWheel.OldEffectFinished")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float EffectDesiredSpinDir() { mixin(MGPC!("float", 284)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OldWheelParticleComp'!
		}
		bool bDisableWheelOnDeath() { mixin(MGBPC!(276, 0x2)()); }
		bool bDisableWheelOnDeath(bool val) { mixin(MSBPC!(276, 0x2)()); }
		bool bUseMaterialSpecificEffects() { mixin(MGBPC!(276, 0x1)()); }
		bool bUseMaterialSpecificEffects(bool val) { mixin(MSBPC!(276, 0x1)()); }
	}
final:
	void SetParticleEffect(UDKVehicle OwnerVehicle, ParticleSystem NewTemplate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = OwnerVehicle;
		*cast(ParticleSystem*)&params[4] = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetParticleEffect, params.ptr, cast(void*)0);
	}
	void OldEffectFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSystem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSystem;
		(cast(ScriptObject)this).ProcessEvent(Functions.OldEffectFinished, params.ptr, cast(void*)0);
	}
}
