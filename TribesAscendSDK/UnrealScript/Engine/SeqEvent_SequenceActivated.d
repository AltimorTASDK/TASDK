module UnrealScript.Engine.SeqEvent_SequenceActivated;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SequenceActivated : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_SequenceActivated")); }
	@property final auto ref ScriptString InputLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
}
