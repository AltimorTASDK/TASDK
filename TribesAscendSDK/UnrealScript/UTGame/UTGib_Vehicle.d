module UnrealScript.UTGame.UTGib_Vehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface UTGib_Vehicle : UTGib
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGib_Vehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mActivateGibExplosionEffect;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGib_Vehicle.PostBeginPlay")); }
			ScriptFunction ActivateGibExplosionEffect() { return mActivateGibExplosionEffect ? mActivateGibExplosionEffect : (mActivateGibExplosionEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGib_Vehicle.ActivateGibExplosionEffect")); }
		}
	}
	@property final auto ref
	{
		ScriptClass OwningClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 612); }
		ParticleSystem PS_GibExplosionEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 584); }
		ParticleSystem PS_GibTrailEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 588); }
		float TimeBeforeGibExplosionEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
		MaterialInstanceTimeVarying MITV() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 608); }
		float BurnDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
		ScriptName BurnName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 596); }
		SoundCue LoopedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 592); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ActivateGibExplosionEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateGibExplosionEffect, cast(void*)0, cast(void*)0);
	}
}
