module UnrealScript.Engine.SeqEvent_ConstraintBroken;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ConstraintBroken : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_ConstraintBroken")()); }
	private static __gshared SeqEvent_ConstraintBroken mDefaultProperties;
	@property final static SeqEvent_ConstraintBroken DefaultProperties() { mixin(MGDPC!(SeqEvent_ConstraintBroken, "SeqEvent_ConstraintBroken Engine.Default__SeqEvent_ConstraintBroken")()); }
}
