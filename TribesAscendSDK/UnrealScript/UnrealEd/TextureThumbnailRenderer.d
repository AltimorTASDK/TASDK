module UnrealScript.UnrealEd.TextureThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface TextureThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextureThumbnailRenderer")); }
	private static __gshared TextureThumbnailRenderer mDefaultProperties;
	@property final static TextureThumbnailRenderer DefaultProperties() { mixin(MGDPC("TextureThumbnailRenderer", "TextureThumbnailRenderer UnrealEd.Default__TextureThumbnailRenderer")); }
}
