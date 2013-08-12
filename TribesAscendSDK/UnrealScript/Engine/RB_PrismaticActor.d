module UnrealScript.Engine.RB_PrismaticActor;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_PrismaticActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_PrismaticActor")); }
	private static __gshared RB_PrismaticActor mDefaultProperties;
	@property final static RB_PrismaticActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_PrismaticActor)("RB_PrismaticActor Engine.Default__RB_PrismaticActor")); }
}
