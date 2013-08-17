module UnrealScript.UnrealEd.SkeletalMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface SkeletalMeshLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SkeletalMeshLabelRenderer")()); }
	private static __gshared SkeletalMeshLabelRenderer mDefaultProperties;
	@property final static SkeletalMeshLabelRenderer DefaultProperties() { mixin(MGDPC!(SkeletalMeshLabelRenderer, "SkeletalMeshLabelRenderer UnrealEd.Default__SkeletalMeshLabelRenderer")()); }
}
