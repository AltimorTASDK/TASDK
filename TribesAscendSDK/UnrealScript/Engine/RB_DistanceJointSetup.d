module UnrealScript.Engine.RB_DistanceJointSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_DistanceJointSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_DistanceJointSetup")); }
	private static __gshared RB_DistanceJointSetup mDefaultProperties;
	@property final static RB_DistanceJointSetup DefaultProperties() { mixin(MGDPC("RB_DistanceJointSetup", "RB_DistanceJointSetup Engine.Default__RB_DistanceJointSetup")); }
}
