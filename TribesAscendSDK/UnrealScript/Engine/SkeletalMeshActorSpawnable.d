module UnrealScript.Engine.SkeletalMeshActorSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshActorSpawnable : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SkeletalMeshActorSpawnable")); }
	private static __gshared SkeletalMeshActorSpawnable mDefaultProperties;
	@property final static SkeletalMeshActorSpawnable DefaultProperties() { mixin(MGDPC("SkeletalMeshActorSpawnable", "SkeletalMeshActorSpawnable Engine.Default__SkeletalMeshActorSpawnable")); }
}
