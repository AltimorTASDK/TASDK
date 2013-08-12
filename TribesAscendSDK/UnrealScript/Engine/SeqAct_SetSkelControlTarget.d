module UnrealScript.Engine.SeqAct_SetSkelControlTarget;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSkelControlTarget : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetSkelControlTarget")); }
	@property final auto ref
	{
		ScriptArray!(UObject) TargetActors() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 240); }
		ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
	}
}
