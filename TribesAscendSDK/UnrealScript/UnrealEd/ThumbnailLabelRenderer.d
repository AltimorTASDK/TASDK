module UnrealScript.UnrealEd.ThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ThumbnailLabelRenderer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ThumbnailLabelRenderer")); }
	private static __gshared ThumbnailLabelRenderer mDefaultProperties;
	@property final static ThumbnailLabelRenderer DefaultProperties() { mixin(MGDPC("ThumbnailLabelRenderer", "ThumbnailLabelRenderer UnrealEd.Default__ThumbnailLabelRenderer")); }
}
