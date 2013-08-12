module UnrealScript.Engine.RB_SkelJointSetup;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_SkelJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_SkelJointSetup")); }
}
