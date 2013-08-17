module UnrealScript.Engine.SeqEvent_PlayerSpawned;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqEvent_PlayerSpawned : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_PlayerSpawned")()); }
	private static __gshared SeqEvent_PlayerSpawned mDefaultProperties;
	@property final static SeqEvent_PlayerSpawned DefaultProperties() { mixin(MGDPC!(SeqEvent_PlayerSpawned, "SeqEvent_PlayerSpawned Engine.Default__SeqEvent_PlayerSpawned")()); }
	@property final auto ref UObject SpawnPoint() { mixin(MGPC!("UObject", 256)()); }
}
