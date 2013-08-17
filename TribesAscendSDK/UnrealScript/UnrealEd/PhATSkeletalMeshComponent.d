module UnrealScript.UnrealEd.PhATSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface PhATSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PhATSkeletalMeshComponent")); }
	private static __gshared PhATSkeletalMeshComponent mDefaultProperties;
	@property final static PhATSkeletalMeshComponent DefaultProperties() { mixin(MGDPC("PhATSkeletalMeshComponent", "PhATSkeletalMeshComponent UnrealEd.Default__PhATSkeletalMeshComponent")); }
}
