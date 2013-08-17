module UnrealScript.UnrealEd.ApexDestructibleAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexDestructibleAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ApexDestructibleAssetLabelRenderer")); }
	private static __gshared ApexDestructibleAssetLabelRenderer mDefaultProperties;
	@property final static ApexDestructibleAssetLabelRenderer DefaultProperties() { mixin(MGDPC("ApexDestructibleAssetLabelRenderer", "ApexDestructibleAssetLabelRenderer UnrealEd.Default__ApexDestructibleAssetLabelRenderer")); }
}
