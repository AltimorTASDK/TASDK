module UnrealScript.Engine.SeqEvent_AnimNotify;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AnimNotify : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_AnimNotify")); }
	@property final auto ref ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
}
