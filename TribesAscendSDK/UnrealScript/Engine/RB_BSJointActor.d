module UnrealScript.Engine.RB_BSJointActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_BSJointActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_BSJointActor")()); }
	private static __gshared RB_BSJointActor mDefaultProperties;
	@property final static RB_BSJointActor DefaultProperties() { mixin(MGDPC!(RB_BSJointActor, "RB_BSJointActor Engine.Default__RB_BSJointActor")()); }
}
