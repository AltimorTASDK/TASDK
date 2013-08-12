module UnrealScript.Engine.RB_HingeActor;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_HingeActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_HingeActor")); }
}
