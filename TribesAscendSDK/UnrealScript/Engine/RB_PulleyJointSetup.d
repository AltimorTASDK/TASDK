module UnrealScript.Engine.RB_PulleyJointSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_PulleyJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_PulleyJointSetup")()); }
	private static __gshared RB_PulleyJointSetup mDefaultProperties;
	@property final static RB_PulleyJointSetup DefaultProperties() { mixin(MGDPC!(RB_PulleyJointSetup, "RB_PulleyJointSetup Engine.Default__RB_PulleyJointSetup")()); }
}
