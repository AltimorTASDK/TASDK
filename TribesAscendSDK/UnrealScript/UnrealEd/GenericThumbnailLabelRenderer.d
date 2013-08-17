module UnrealScript.UnrealEd.GenericThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface GenericThumbnailLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericThumbnailLabelRenderer")); }
	private static __gshared GenericThumbnailLabelRenderer mDefaultProperties;
	@property final static GenericThumbnailLabelRenderer DefaultProperties() { mixin(MGDPC("GenericThumbnailLabelRenderer", "GenericThumbnailLabelRenderer UnrealEd.Default__GenericThumbnailLabelRenderer")); }
}
