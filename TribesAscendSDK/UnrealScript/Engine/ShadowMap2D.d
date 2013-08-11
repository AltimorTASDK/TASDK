module UnrealScript.Engine.ShadowMap2D;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.ShadowMapTexture2D;

extern(C++) interface ShadowMap2D : UObject
{
	public @property final auto ref int InstanceIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bIsShadowFactorTexture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bIsShadowFactorTexture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref UObject.Guid LightGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref UObject.Vector2D CoordinateBias() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref UObject.Vector2D CoordinateScale() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 64); }
	// WARNING: Property 'Texture' has the same name as a defined type!
}
