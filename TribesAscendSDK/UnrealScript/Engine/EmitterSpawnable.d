module UnrealScript.Engine.EmitterSpawnable;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;

extern(C++) interface EmitterSpawnable : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.EmitterSpawnable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function Engine.EmitterSpawnable.SetTemplate")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.EmitterSpawnable.ReplicatedEvent")); }
		}
	}
	@property final auto ref ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
final:
	void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
