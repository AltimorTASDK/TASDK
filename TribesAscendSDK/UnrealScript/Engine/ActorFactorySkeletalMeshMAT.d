module UnrealScript.Engine.ActorFactorySkeletalMeshMAT;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactorySkeletalMeshMAT : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactorySkeletalMeshMAT")); }
	private static __gshared ActorFactorySkeletalMeshMAT mDefaultProperties;
	@property final static ActorFactorySkeletalMeshMAT DefaultProperties() { mixin(MGDPC("ActorFactorySkeletalMeshMAT", "ActorFactorySkeletalMeshMAT Engine.Default__ActorFactorySkeletalMeshMAT")); }
}
