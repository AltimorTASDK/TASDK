module UnrealScript.UTGame.UTReplicatedEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTReplicatedEmitter : UTEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTReplicatedEmitter")()); }
	private static __gshared UTReplicatedEmitter mDefaultProperties;
	@property final static UTReplicatedEmitter DefaultProperties() { mixin(MGDPC!(UTReplicatedEmitter, "UTReplicatedEmitter UTGame.Default__UTReplicatedEmitter")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTReplicatedEmitter.PostBeginPlay")()); }
	}
	@property final auto ref
	{
		float ServerLifeSpan() { mixin(MGPC!(float, 492)()); }
		ParticleSystem EmitterTemplate() { mixin(MGPC!(ParticleSystem, 488)()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
