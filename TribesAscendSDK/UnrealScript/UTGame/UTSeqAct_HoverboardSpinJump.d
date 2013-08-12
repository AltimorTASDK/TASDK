module UnrealScript.UTGame.UTSeqAct_HoverboardSpinJump;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_HoverboardSpinJump : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_HoverboardSpinJump")); }
	@property final auto ref float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
