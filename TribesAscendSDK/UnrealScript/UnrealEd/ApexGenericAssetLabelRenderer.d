module UnrealScript.UnrealEd.ApexGenericAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexGenericAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ApexGenericAssetLabelRenderer")()); }
	private static __gshared ApexGenericAssetLabelRenderer mDefaultProperties;
	@property final static ApexGenericAssetLabelRenderer DefaultProperties() { mixin(MGDPC!(ApexGenericAssetLabelRenderer, "ApexGenericAssetLabelRenderer UnrealEd.Default__ApexGenericAssetLabelRenderer")()); }
}
