module UnrealScript.Engine.RB_PrismaticSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_PrismaticSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_PrismaticSetup")()); }
	private static __gshared RB_PrismaticSetup mDefaultProperties;
	@property final static RB_PrismaticSetup DefaultProperties() { mixin(MGDPC!(RB_PrismaticSetup, "RB_PrismaticSetup Engine.Default__RB_PrismaticSetup")()); }
}
