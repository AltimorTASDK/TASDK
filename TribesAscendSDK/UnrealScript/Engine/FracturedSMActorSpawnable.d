module UnrealScript.Engine.FracturedSMActorSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FracturedStaticMeshActor;

extern(C++) interface FracturedSMActorSpawnable : FracturedStaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FracturedSMActorSpawnable")()); }
	private static __gshared FracturedSMActorSpawnable mDefaultProperties;
	@property final static FracturedSMActorSpawnable DefaultProperties() { mixin(MGDPC!(FracturedSMActorSpawnable, "FracturedSMActorSpawnable Engine.Default__FracturedSMActorSpawnable")()); }
}
