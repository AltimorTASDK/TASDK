module UnrealScript.Engine.FracturedSMActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.FracturedStaticMeshActor;

extern(C++) interface FracturedSMActorSpawnable : FracturedStaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FracturedSMActorSpawnable")); }
	private static __gshared FracturedSMActorSpawnable mDefaultProperties;
	@property final static FracturedSMActorSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FracturedSMActorSpawnable)("FracturedSMActorSpawnable Engine.Default__FracturedSMActorSpawnable")); }
}
