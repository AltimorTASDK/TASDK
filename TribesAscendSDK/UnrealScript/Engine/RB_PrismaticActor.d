module UnrealScript.Engine.RB_PrismaticActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_PrismaticActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_PrismaticActor")()); }
	private static __gshared RB_PrismaticActor mDefaultProperties;
	@property final static RB_PrismaticActor DefaultProperties() { mixin(MGDPC!(RB_PrismaticActor, "RB_PrismaticActor Engine.Default__RB_PrismaticActor")()); }
}
