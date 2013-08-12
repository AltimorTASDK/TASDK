module UnrealScript.Engine.ActorFactorySkeletalMeshMAT;

import ScriptClasses;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactorySkeletalMeshMAT : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactorySkeletalMeshMAT")); }
}
