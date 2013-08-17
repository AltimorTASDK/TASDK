module UnrealScript.Engine.SkeletalMeshCinematicActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshCinematicActor : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshCinematicActor")()); }
	private static __gshared SkeletalMeshCinematicActor mDefaultProperties;
	@property final static SkeletalMeshCinematicActor DefaultProperties() { mixin(MGDPC!(SkeletalMeshCinematicActor, "SkeletalMeshCinematicActor Engine.Default__SkeletalMeshCinematicActor")()); }
}
