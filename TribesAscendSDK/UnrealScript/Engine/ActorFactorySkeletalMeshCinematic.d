module UnrealScript.Engine.ActorFactorySkeletalMeshCinematic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactorySkeletalMeshCinematic : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactorySkeletalMeshCinematic")()); }
	private static __gshared ActorFactorySkeletalMeshCinematic mDefaultProperties;
	@property final static ActorFactorySkeletalMeshCinematic DefaultProperties() { mixin(MGDPC!(ActorFactorySkeletalMeshCinematic, "ActorFactorySkeletalMeshCinematic Engine.Default__ActorFactorySkeletalMeshCinematic")()); }
}
