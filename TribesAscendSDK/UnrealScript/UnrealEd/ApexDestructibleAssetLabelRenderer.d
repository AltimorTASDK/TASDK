module UnrealScript.UnrealEd.ApexDestructibleAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexDestructibleAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ApexDestructibleAssetLabelRenderer")); }
	private static __gshared ApexDestructibleAssetLabelRenderer mDefaultProperties;
	@property final static ApexDestructibleAssetLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexDestructibleAssetLabelRenderer)("ApexDestructibleAssetLabelRenderer UnrealEd.Default__ApexDestructibleAssetLabelRenderer")); }
}
