module UnrealScript.UnrealEd.AnimTreeLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AnimTreeLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnimTreeLabelRenderer")); }
	private static __gshared AnimTreeLabelRenderer mDefaultProperties;
	@property final static AnimTreeLabelRenderer DefaultProperties() { mixin(MGDPC("AnimTreeLabelRenderer", "AnimTreeLabelRenderer UnrealEd.Default__AnimTreeLabelRenderer")); }
}
