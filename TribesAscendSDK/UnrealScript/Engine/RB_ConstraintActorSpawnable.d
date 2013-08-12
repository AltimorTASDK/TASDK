module UnrealScript.Engine.RB_ConstraintActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_ConstraintActorSpawnable : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ConstraintActorSpawnable")); }
	private static __gshared RB_ConstraintActorSpawnable mDefaultProperties;
	@property final static RB_ConstraintActorSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_ConstraintActorSpawnable)("RB_ConstraintActorSpawnable Engine.Default__RB_ConstraintActorSpawnable")); }
}
