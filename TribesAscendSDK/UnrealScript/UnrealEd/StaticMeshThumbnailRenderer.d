module UnrealScript.UnrealEd.StaticMeshThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface StaticMeshThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshThumbnailRenderer")); }
	private static __gshared StaticMeshThumbnailRenderer mDefaultProperties;
	@property final static StaticMeshThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshThumbnailRenderer)("StaticMeshThumbnailRenderer UnrealEd.Default__StaticMeshThumbnailRenderer")); }
}
