module UnrealScript.Engine.SeqEvent_ConstraintBroken;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ConstraintBroken : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_ConstraintBroken")); }
}
