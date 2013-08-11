module UnrealScript.UTGame.UTReplicatedEmitter;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTEmitter;

extern(C++) interface UTReplicatedEmitter : UTEmitter
{
	public @property final auto ref float ServerLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref ParticleSystem EmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47383], cast(void*)0, cast(void*)0);
	}
}
