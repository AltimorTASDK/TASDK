module UnrealScript.UnrealEd.FontThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface FontThumbnailLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FontThumbnailLabelRenderer")); }
	private static __gshared FontThumbnailLabelRenderer mDefaultProperties;
	@property final static FontThumbnailLabelRenderer DefaultProperties() { mixin(MGDPC("FontThumbnailLabelRenderer", "FontThumbnailLabelRenderer UnrealEd.Default__FontThumbnailLabelRenderer")); }
}
