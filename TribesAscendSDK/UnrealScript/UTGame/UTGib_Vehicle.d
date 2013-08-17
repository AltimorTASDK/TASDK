module UnrealScript.UTGame.UTGib_Vehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface UTGib_Vehicle : UTGib
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGib_Vehicle")); }
	private static __gshared UTGib_Vehicle mDefaultProperties;
	@property final static UTGib_Vehicle DefaultProperties() { mixin(MGDPC("UTGib_Vehicle", "UTGib_Vehicle UTGame.Default__UTGib_Vehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mActivateGibExplosionEffect;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTGib_Vehicle.PostBeginPlay")); }
			ScriptFunction ActivateGibExplosionEffect() { mixin(MGF("mActivateGibExplosionEffect", "Function UTGame.UTGib_Vehicle.ActivateGibExplosionEffect")); }
		}
	}
	@property final auto ref
	{
		ScriptClass OwningClass() { mixin(MGPC("ScriptClass", 612)); }
		ParticleSystem PS_GibExplosionEffect() { mixin(MGPC("ParticleSystem", 584)); }
		ParticleSystem PS_GibTrailEffect() { mixin(MGPC("ParticleSystem", 588)); }
		float TimeBeforeGibExplosionEffect() { mixin(MGPC("float", 580)); }
		MaterialInstanceTimeVarying MITV() { mixin(MGPC("MaterialInstanceTimeVarying", 608)); }
		float BurnDuration() { mixin(MGPC("float", 604)); }
		ScriptName BurnName() { mixin(MGPC("ScriptName", 596)); }
		SoundCue LoopedSound() { mixin(MGPC("SoundCue", 592)); }
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
