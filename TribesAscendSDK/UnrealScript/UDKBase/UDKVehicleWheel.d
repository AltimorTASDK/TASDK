module UnrealScript.UDKBase.UDKVehicleWheel;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SVehicleWheel;

extern(C++) interface UDKVehicleWheel : SVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKVehicleWheel")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetParticleEffect;
			ScriptFunction mOldEffectFinished;
		}
		public @property static final
		{
			ScriptFunction SetParticleEffect() { return mSetParticleEffect ? mSetParticleEffect : (mSetParticleEffect = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleWheel.SetParticleEffect")); }
			ScriptFunction OldEffectFinished() { return mOldEffectFinished ? mOldEffectFinished : (mOldEffectFinished = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleWheel.OldEffectFinished")); }
		}
	}
	@property final
	{
		@property final auto ref float EffectDesiredSpinDir() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
		bool bDisableWheelOnDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool bDisableWheelOnDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool bUseMaterialSpecificEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bUseMaterialSpecificEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
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
