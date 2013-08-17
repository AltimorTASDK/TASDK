module UnrealScript.Engine.SeqEvent_LevelBeginning;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LevelBeginning : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_LevelBeginning")()); }
	private static __gshared SeqEvent_LevelBeginning mDefaultProperties;
	@property final static SeqEvent_LevelBeginning DefaultProperties() { mixin(MGDPC!(SeqEvent_LevelBeginning, "SeqEvent_LevelBeginning Engine.Default__SeqEvent_LevelBeginning")()); }
}
