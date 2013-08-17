module UnrealScript.UnrealEd.MaterialInstanceLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface MaterialInstanceLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MaterialInstanceLabelRenderer")()); }
	private static __gshared MaterialInstanceLabelRenderer mDefaultProperties;
	@property final static MaterialInstanceLabelRenderer DefaultProperties() { mixin(MGDPC!(MaterialInstanceLabelRenderer, "MaterialInstanceLabelRenderer UnrealEd.Default__MaterialInstanceLabelRenderer")()); }
}
