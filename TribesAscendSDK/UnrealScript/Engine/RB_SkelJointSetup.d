module UnrealScript.Engine.RB_SkelJointSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_SkelJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_SkelJointSetup")()); }
	private static __gshared RB_SkelJointSetup mDefaultProperties;
	@property final static RB_SkelJointSetup DefaultProperties() { mixin(MGDPC!(RB_SkelJointSetup, "RB_SkelJointSetup Engine.Default__RB_SkelJointSetup")()); }
}
