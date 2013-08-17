module UnrealScript.UnrealEd.ApexDestructibleAssetThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface ApexDestructibleAssetThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ApexDestructibleAssetThumbnailRenderer")()); }
	private static __gshared ApexDestructibleAssetThumbnailRenderer mDefaultProperties;
	@property final static ApexDestructibleAssetThumbnailRenderer DefaultProperties() { mixin(MGDPC!(ApexDestructibleAssetThumbnailRenderer, "ApexDestructibleAssetThumbnailRenderer UnrealEd.Default__ApexDestructibleAssetThumbnailRenderer")()); }
}
