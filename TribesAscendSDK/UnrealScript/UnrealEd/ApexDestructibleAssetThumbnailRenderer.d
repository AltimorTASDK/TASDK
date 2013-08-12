module UnrealScript.UnrealEd.ApexDestructibleAssetThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface ApexDestructibleAssetThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ApexDestructibleAssetThumbnailRenderer")); }
	private static __gshared ApexDestructibleAssetThumbnailRenderer mDefaultProperties;
	@property final static ApexDestructibleAssetThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexDestructibleAssetThumbnailRenderer)("ApexDestructibleAssetThumbnailRenderer UnrealEd.Default__ApexDestructibleAssetThumbnailRenderer")); }
}
