module UnrealScript.UnrealEd.AITreeLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AITreeLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AITreeLabelRenderer")()); }
	private static __gshared AITreeLabelRenderer mDefaultProperties;
	@property final static AITreeLabelRenderer DefaultProperties() { mixin(MGDPC!(AITreeLabelRenderer, "AITreeLabelRenderer UnrealEd.Default__AITreeLabelRenderer")()); }
}
