module UnrealScript.UTGame.UTGibSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface UTGibSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGibSkeletalMeshComponent")); }
	private static __gshared UTGibSkeletalMeshComponent mDefaultProperties;
	@property final static UTGibSkeletalMeshComponent DefaultProperties() { mixin(MGDPC("UTGibSkeletalMeshComponent", "UTGibSkeletalMeshComponent UTGame.Default__UTGibSkeletalMeshComponent")); }
}
