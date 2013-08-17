module UnrealScript.Engine.AnimNotify_ClothingMaxDistanceScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface AnimNotify_ClothingMaxDistanceScale : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNotify_ClothingMaxDistanceScale")); }
	private static __gshared AnimNotify_ClothingMaxDistanceScale mDefaultProperties;
	@property final static AnimNotify_ClothingMaxDistanceScale DefaultProperties() { mixin(MGDPC("AnimNotify_ClothingMaxDistanceScale", "AnimNotify_ClothingMaxDistanceScale Engine.Default__AnimNotify_ClothingMaxDistanceScale")); }
	@property final auto ref
	{
		float Duration() { mixin(MGPC("float", 76)); }
		SkeletalMeshComponent.EMaxDistanceScaleMode ScaleMode() { mixin(MGPC("SkeletalMeshComponent.EMaxDistanceScaleMode", 72)); }
		float EndScale() { mixin(MGPC("float", 68)); }
		float StartScale() { mixin(MGPC("float", 64)); }
	}
}
