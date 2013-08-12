module UnrealScript.Engine.AnimNotify_ClothingMaxDistanceScale;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface AnimNotify_ClothingMaxDistanceScale : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_ClothingMaxDistanceScale")); }
	private static __gshared AnimNotify_ClothingMaxDistanceScale mDefaultProperties;
	@property final static AnimNotify_ClothingMaxDistanceScale DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_ClothingMaxDistanceScale)("AnimNotify_ClothingMaxDistanceScale Engine.Default__AnimNotify_ClothingMaxDistanceScale")); }
	@property final auto ref
	{
		float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		SkeletalMeshComponent.EMaxDistanceScaleMode ScaleMode() { return *cast(SkeletalMeshComponent.EMaxDistanceScaleMode*)(cast(size_t)cast(void*)this + 72); }
		float EndScale() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		float StartScale() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	}
}
