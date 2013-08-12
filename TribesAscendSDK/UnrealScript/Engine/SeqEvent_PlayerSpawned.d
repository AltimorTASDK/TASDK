module UnrealScript.Engine.SeqEvent_PlayerSpawned;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqEvent_PlayerSpawned : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_PlayerSpawned")); }
	private static __gshared SeqEvent_PlayerSpawned mDefaultProperties;
	@property final static SeqEvent_PlayerSpawned DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_PlayerSpawned)("SeqEvent_PlayerSpawned Engine.Default__SeqEvent_PlayerSpawned")); }
	@property final auto ref UObject SpawnPoint() { return *cast(UObject*)(cast(size_t)cast(void*)this + 256); }
}
