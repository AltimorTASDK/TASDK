module UnrealScript.Engine.RB_BSJointSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_BSJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_BSJointSetup")); }
	private static __gshared RB_BSJointSetup mDefaultProperties;
	@property final static RB_BSJointSetup DefaultProperties() { mixin(MGDPC("RB_BSJointSetup", "RB_BSJointSetup Engine.Default__RB_BSJointSetup")); }
}
