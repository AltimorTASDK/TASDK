module UnrealScript.Engine.ActorFactorySkeletalMeshCinematic;

import ScriptClasses;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactorySkeletalMeshCinematic : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactorySkeletalMeshCinematic")); }
}
