module UnrealScript.Engine.SkeletalMeshActorMATWalkable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshActorMAT;

extern(C++) interface SkeletalMeshActorMATWalkable : SkeletalMeshActorMAT
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SkeletalMeshActorMATWalkable")); }
	private static __gshared SkeletalMeshActorMATWalkable mDefaultProperties;
	@property final static SkeletalMeshActorMATWalkable DefaultProperties() { mixin(MGDPC("SkeletalMeshActorMATWalkable", "SkeletalMeshActorMATWalkable Engine.Default__SkeletalMeshActorMATWalkable")); }
}
