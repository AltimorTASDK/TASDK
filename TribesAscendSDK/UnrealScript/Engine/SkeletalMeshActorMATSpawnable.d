module UnrealScript.Engine.SkeletalMeshActorMATSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshActorMAT;

extern(C++) interface SkeletalMeshActorMATSpawnable : SkeletalMeshActorMAT
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshActorMATSpawnable")()); }
	private static __gshared SkeletalMeshActorMATSpawnable mDefaultProperties;
	@property final static SkeletalMeshActorMATSpawnable DefaultProperties() { mixin(MGDPC!(SkeletalMeshActorMATSpawnable, "SkeletalMeshActorMATSpawnable Engine.Default__SkeletalMeshActorMATSpawnable")()); }
}
