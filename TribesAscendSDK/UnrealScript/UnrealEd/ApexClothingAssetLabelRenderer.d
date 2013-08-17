module UnrealScript.UnrealEd.ApexClothingAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexClothingAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ApexClothingAssetLabelRenderer")); }
	private static __gshared ApexClothingAssetLabelRenderer mDefaultProperties;
	@property final static ApexClothingAssetLabelRenderer DefaultProperties() { mixin(MGDPC("ApexClothingAssetLabelRenderer", "ApexClothingAssetLabelRenderer UnrealEd.Default__ApexClothingAssetLabelRenderer")); }
}
