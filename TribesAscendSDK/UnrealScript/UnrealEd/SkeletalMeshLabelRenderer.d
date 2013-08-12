module UnrealScript.UnrealEd.SkeletalMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface SkeletalMeshLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SkeletalMeshLabelRenderer")); }
	private static __gshared SkeletalMeshLabelRenderer mDefaultProperties;
	@property final static SkeletalMeshLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkeletalMeshLabelRenderer)("SkeletalMeshLabelRenderer UnrealEd.Default__SkeletalMeshLabelRenderer")); }
}
