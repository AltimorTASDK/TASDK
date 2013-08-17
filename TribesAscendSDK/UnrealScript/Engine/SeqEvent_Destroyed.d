module UnrealScript.Engine.SeqEvent_Destroyed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_Destroyed : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_Destroyed")()); }
	private static __gshared SeqEvent_Destroyed mDefaultProperties;
	@property final static SeqEvent_Destroyed DefaultProperties() { mixin(MGDPC!(SeqEvent_Destroyed, "SeqEvent_Destroyed Engine.Default__SeqEvent_Destroyed")()); }
}
