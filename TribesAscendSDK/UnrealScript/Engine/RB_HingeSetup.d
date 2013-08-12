module UnrealScript.Engine.RB_HingeSetup;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_HingeSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_HingeSetup")); }
	private static __gshared RB_HingeSetup mDefaultProperties;
	@property final static RB_HingeSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_HingeSetup)("RB_HingeSetup Engine.Default__RB_HingeSetup")); }
}
