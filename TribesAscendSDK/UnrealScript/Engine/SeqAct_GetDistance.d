module UnrealScript.Engine.SeqAct_GetDistance;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetDistance : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GetDistance")); }
	@property final auto ref float Distance() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
