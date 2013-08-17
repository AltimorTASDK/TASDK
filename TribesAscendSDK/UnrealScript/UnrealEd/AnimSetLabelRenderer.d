module UnrealScript.UnrealEd.AnimSetLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AnimSetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnimSetLabelRenderer")); }
	private static __gshared AnimSetLabelRenderer mDefaultProperties;
	@property final static AnimSetLabelRenderer DefaultProperties() { mixin(MGDPC("AnimSetLabelRenderer", "AnimSetLabelRenderer UnrealEd.Default__AnimSetLabelRenderer")); }
}
