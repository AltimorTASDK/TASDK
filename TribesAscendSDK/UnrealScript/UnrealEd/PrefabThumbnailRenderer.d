module UnrealScript.UnrealEd.PrefabThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.IconThumbnailRenderer;

extern(C++) interface PrefabThumbnailRenderer : IconThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PrefabThumbnailRenderer")); }
	private static __gshared PrefabThumbnailRenderer mDefaultProperties;
	@property final static PrefabThumbnailRenderer DefaultProperties() { mixin(MGDPC("PrefabThumbnailRenderer", "PrefabThumbnailRenderer UnrealEd.Default__PrefabThumbnailRenderer")); }
}
