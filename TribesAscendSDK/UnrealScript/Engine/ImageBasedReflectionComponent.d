module UnrealScript.Engine.ImageBasedReflectionComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface ImageBasedReflectionComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ImageBasedReflectionComponent")); }
	private static __gshared ImageBasedReflectionComponent mDefaultProperties;
	@property final static ImageBasedReflectionComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ImageBasedReflectionComponent)("ImageBasedReflectionComponent Engine.Default__ImageBasedReflectionComponent")); }
	@property final
	{
		auto ref
		{
			UObject.LinearColor ReflectionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 616); }
			Texture2D ReflectionTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 612); }
		}
		bool bTwoSided() { return (*cast(uint*)(cast(size_t)cast(void*)this + 608) & 0x2) != 0; }
		bool bTwoSided(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 608) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 608) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 608) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 608) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 608) &= ~0x1; } return val; }
	}
}
