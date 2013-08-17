module UnrealScript.Engine.SeqEvent_SequenceActivated;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SequenceActivated : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_SequenceActivated")()); }
	private static __gshared SeqEvent_SequenceActivated mDefaultProperties;
	@property final static SeqEvent_SequenceActivated DefaultProperties() { mixin(MGDPC!(SeqEvent_SequenceActivated, "SeqEvent_SequenceActivated Engine.Default__SeqEvent_SequenceActivated")()); }
	@property final auto ref ScriptString InputLabel() { mixin(MGPC!("ScriptString", 256)()); }
}
