module UnrealScript.Engine.EmitterSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;

extern(C++) interface EmitterSpawnable : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.EmitterSpawnable")()); }
	private static __gshared EmitterSpawnable mDefaultProperties;
	@property final static EmitterSpawnable DefaultProperties() { mixin(MGDPC!(EmitterSpawnable, "EmitterSpawnable Engine.Default__EmitterSpawnable")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { mixin(MGF!("mSetTemplate", "Function Engine.EmitterSpawnable.SetTemplate")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.EmitterSpawnable.ReplicatedEvent")()); }
		}
	}
	@property final auto ref ParticleSystem ParticleTemplate() { mixin(MGPC!("ParticleSystem", 488)()); }
final:
	void SetTemplate(ParticleSystem NewTemplate, bool* bDestroyOnFinish = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		if (bDestroyOnFinish !is null)
			*cast(bool*)&params[4] = *bDestroyOnFinish;
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
