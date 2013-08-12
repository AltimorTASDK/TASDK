module UnrealScript.UnrealEd.PhysicsAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface PhysicsAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PhysicsAssetLabelRenderer")); }
	private static __gshared PhysicsAssetLabelRenderer mDefaultProperties;
	@property final static PhysicsAssetLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PhysicsAssetLabelRenderer)("PhysicsAssetLabelRenderer UnrealEd.Default__PhysicsAssetLabelRenderer")); }
}
