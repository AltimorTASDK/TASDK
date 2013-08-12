module UnrealScript.UTGame.UTReplicatedEmitter;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTReplicatedEmitter : UTEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTReplicatedEmitter")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTReplicatedEmitter.PostBeginPlay")); }
	}
	@property final auto ref
	{
		float ServerLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		ParticleSystem EmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
