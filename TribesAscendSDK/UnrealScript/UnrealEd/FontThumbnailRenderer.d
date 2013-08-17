module UnrealScript.UnrealEd.FontThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface FontThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FontThumbnailRenderer")); }
	private static __gshared FontThumbnailRenderer mDefaultProperties;
	@property final static FontThumbnailRenderer DefaultProperties() { mixin(MGDPC("FontThumbnailRenderer", "FontThumbnailRenderer UnrealEd.Default__FontThumbnailRenderer")); }
}
