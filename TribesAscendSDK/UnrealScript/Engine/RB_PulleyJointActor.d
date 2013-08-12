module UnrealScript.Engine.RB_PulleyJointActor;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_PulleyJointActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_PulleyJointActor")); }
	private static __gshared RB_PulleyJointActor mDefaultProperties;
	@property final static RB_PulleyJointActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_PulleyJointActor)("RB_PulleyJointActor Engine.Default__RB_PulleyJointActor")); }
}
