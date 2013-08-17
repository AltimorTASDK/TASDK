module UnrealScript.UnrealEd.StaticMeshThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface StaticMeshThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.StaticMeshThumbnailRenderer")); }
	private static __gshared StaticMeshThumbnailRenderer mDefaultProperties;
	@property final static StaticMeshThumbnailRenderer DefaultProperties() { mixin(MGDPC("StaticMeshThumbnailRenderer", "StaticMeshThumbnailRenderer UnrealEd.Default__StaticMeshThumbnailRenderer")); }
}
