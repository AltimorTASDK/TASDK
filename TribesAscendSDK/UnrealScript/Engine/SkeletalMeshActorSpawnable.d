module UnrealScript.Engine.SkeletalMeshActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshActorSpawnable : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshActorSpawnable")); }
}
