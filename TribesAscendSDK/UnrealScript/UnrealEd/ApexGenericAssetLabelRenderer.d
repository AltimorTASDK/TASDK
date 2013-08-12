module UnrealScript.UnrealEd.ApexGenericAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexGenericAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ApexGenericAssetLabelRenderer")); }
	private static __gshared ApexGenericAssetLabelRenderer mDefaultProperties;
	@property final static ApexGenericAssetLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexGenericAssetLabelRenderer)("ApexGenericAssetLabelRenderer UnrealEd.Default__ApexGenericAssetLabelRenderer")); }
}
