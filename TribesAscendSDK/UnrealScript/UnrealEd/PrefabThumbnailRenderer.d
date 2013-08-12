module UnrealScript.UnrealEd.PrefabThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.IconThumbnailRenderer;

extern(C++) interface PrefabThumbnailRenderer : IconThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PrefabThumbnailRenderer")); }
	private static __gshared PrefabThumbnailRenderer mDefaultProperties;
	@property final static PrefabThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrefabThumbnailRenderer)("PrefabThumbnailRenderer UnrealEd.Default__PrefabThumbnailRenderer")); }
}
