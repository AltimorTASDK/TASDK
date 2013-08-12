module UnrealScript.GameFramework.GameCrowdReplicationActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdReplicationActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdReplicationActor")); }
	private static __gshared GameCrowdReplicationActor mDefaultProperties;
	@property final static GameCrowdReplicationActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdReplicationActor)("GameCrowdReplicationActor GameFramework.Default__GameCrowdReplicationActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mReplicatedEvent;
		public @property static final ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdReplicationActor.ReplicatedEvent")); }
	}
	@property final
	{
		auto ref
		{
			int DestroyAllCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
			SeqAct_GameCrowdSpawner Spawner() { return *cast(SeqAct_GameCrowdSpawner*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bSpawningActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bSpawningActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
