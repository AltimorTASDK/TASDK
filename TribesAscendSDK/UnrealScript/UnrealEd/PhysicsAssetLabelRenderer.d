module UnrealScript.UnrealEd.PhysicsAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface PhysicsAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PhysicsAssetLabelRenderer")); }
	private static __gshared PhysicsAssetLabelRenderer mDefaultProperties;
	@property final static PhysicsAssetLabelRenderer DefaultProperties() { mixin(MGDPC("PhysicsAssetLabelRenderer", "PhysicsAssetLabelRenderer UnrealEd.Default__PhysicsAssetLabelRenderer")); }
}
