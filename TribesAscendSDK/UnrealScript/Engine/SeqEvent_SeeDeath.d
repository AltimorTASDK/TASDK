module UnrealScript.Engine.SeqEvent_SeeDeath;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SeeDeath : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_SeeDeath")); }
}
