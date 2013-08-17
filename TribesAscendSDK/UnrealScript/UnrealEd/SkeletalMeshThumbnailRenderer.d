module UnrealScript.UnrealEd.SkeletalMeshThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface SkeletalMeshThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SkeletalMeshThumbnailRenderer")); }
	private static __gshared SkeletalMeshThumbnailRenderer mDefaultProperties;
	@property final static SkeletalMeshThumbnailRenderer DefaultProperties() { mixin(MGDPC("SkeletalMeshThumbnailRenderer", "SkeletalMeshThumbnailRenderer UnrealEd.Default__SkeletalMeshThumbnailRenderer")); }
}
