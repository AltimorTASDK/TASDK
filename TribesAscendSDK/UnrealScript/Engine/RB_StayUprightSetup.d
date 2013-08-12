module UnrealScript.Engine.RB_StayUprightSetup;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_StayUprightSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_StayUprightSetup")); }
	private static __gshared RB_StayUprightSetup mDefaultProperties;
	@property final static RB_StayUprightSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_StayUprightSetup)("RB_StayUprightSetup Engine.Default__RB_StayUprightSetup")); }
}
