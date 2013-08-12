module UnrealScript.UnrealEd.SkeletalMeshThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface SkeletalMeshThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SkeletalMeshThumbnailRenderer")); }
	private static __gshared SkeletalMeshThumbnailRenderer mDefaultProperties;
	@property final static SkeletalMeshThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkeletalMeshThumbnailRenderer)("SkeletalMeshThumbnailRenderer UnrealEd.Default__SkeletalMeshThumbnailRenderer")); }
}
