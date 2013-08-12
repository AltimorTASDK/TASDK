module UnrealScript.Engine.RB_PrismaticSetup;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_PrismaticSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_PrismaticSetup")); }
	private static __gshared RB_PrismaticSetup mDefaultProperties;
	@property final static RB_PrismaticSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_PrismaticSetup)("RB_PrismaticSetup Engine.Default__RB_PrismaticSetup")); }
}
