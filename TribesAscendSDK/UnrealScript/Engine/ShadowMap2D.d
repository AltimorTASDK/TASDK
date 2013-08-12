module UnrealScript.Engine.ShadowMap2D;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ShadowMapTexture2D;

extern(C++) interface ShadowMap2D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ShadowMap2D")); }
	private static __gshared ShadowMap2D mDefaultProperties;
	@property final static ShadowMap2D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShadowMap2D)("ShadowMap2D Engine.Default__ShadowMap2D")); }
	@property final
	{
		auto ref
		{
			int InstanceIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			UObject.Guid LightGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 80); }
			UObject.Vector2D CoordinateBias() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 72); }
			UObject.Vector2D CoordinateScale() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 64); }
			// WARNING: Property 'Texture' has the same name as a defined type!
		}
		bool bIsShadowFactorTexture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bIsShadowFactorTexture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
}
