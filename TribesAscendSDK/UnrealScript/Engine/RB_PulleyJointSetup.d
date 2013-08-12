module UnrealScript.Engine.RB_PulleyJointSetup;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_PulleyJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_PulleyJointSetup")); }
	private static __gshared RB_PulleyJointSetup mDefaultProperties;
	@property final static RB_PulleyJointSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_PulleyJointSetup)("RB_PulleyJointSetup Engine.Default__RB_PulleyJointSetup")); }
}
