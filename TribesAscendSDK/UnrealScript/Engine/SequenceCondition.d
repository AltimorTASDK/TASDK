module UnrealScript.Engine.SequenceCondition;

import ScriptClasses;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceCondition : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceCondition")); }
}
