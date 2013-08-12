module UnrealScript.Engine.SkeletalMeshCinematicActor;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshCinematicActor : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshCinematicActor")); }
}
