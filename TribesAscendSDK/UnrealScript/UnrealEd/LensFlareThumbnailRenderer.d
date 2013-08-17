module UnrealScript.UnrealEd.LensFlareThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface LensFlareThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LensFlareThumbnailRenderer")); }
	private static __gshared LensFlareThumbnailRenderer mDefaultProperties;
	@property final static LensFlareThumbnailRenderer DefaultProperties() { mixin(MGDPC("LensFlareThumbnailRenderer", "LensFlareThumbnailRenderer UnrealEd.Default__LensFlareThumbnailRenderer")); }
}
