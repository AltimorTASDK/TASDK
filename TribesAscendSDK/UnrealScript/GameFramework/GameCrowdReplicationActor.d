module UnrealScript.GameFramework.GameCrowdReplicationActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdReplicationActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdReplicationActor")()); }
	private static __gshared GameCrowdReplicationActor mDefaultProperties;
	@property final static GameCrowdReplicationActor DefaultProperties() { mixin(MGDPC!(GameCrowdReplicationActor, "GameCrowdReplicationActor GameFramework.Default__GameCrowdReplicationActor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mReplicatedEvent;
		public @property static final ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function GameFramework.GameCrowdReplicationActor.ReplicatedEvent")()); }
	}
	static struct ReceivingReplication
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameCrowdReplicationActor.ReceivingReplication")()); }
	}
	@property final
	{
		auto ref
		{
			int DestroyAllCount() { mixin(MGPC!("int", 484)()); }
			SeqAct_GameCrowdSpawner Spawner() { mixin(MGPC!("SeqAct_GameCrowdSpawner", 476)()); }
		}
		bool bSpawningActive() { mixin(MGBPC!(480, 0x1)()); }
		bool bSpawningActive(bool val) { mixin(MSBPC!(480, 0x1)()); }
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
