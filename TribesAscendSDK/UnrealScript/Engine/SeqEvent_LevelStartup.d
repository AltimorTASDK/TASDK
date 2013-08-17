module UnrealScript.Engine.SeqEvent_LevelStartup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LevelStartup : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_LevelStartup")()); }
	private static __gshared SeqEvent_LevelStartup mDefaultProperties;
	@property final static SeqEvent_LevelStartup DefaultProperties() { mixin(MGDPC!(SeqEvent_LevelStartup, "SeqEvent_LevelStartup Engine.Default__SeqEvent_LevelStartup")()); }
}
