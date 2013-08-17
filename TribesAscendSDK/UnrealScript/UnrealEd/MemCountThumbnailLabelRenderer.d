module UnrealScript.UnrealEd.MemCountThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface MemCountThumbnailLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MemCountThumbnailLabelRenderer")()); }
	private static __gshared MemCountThumbnailLabelRenderer mDefaultProperties;
	@property final static MemCountThumbnailLabelRenderer DefaultProperties() { mixin(MGDPC!(MemCountThumbnailLabelRenderer, "MemCountThumbnailLabelRenderer UnrealEd.Default__MemCountThumbnailLabelRenderer")()); }
}
