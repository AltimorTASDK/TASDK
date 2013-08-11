module UnrealScript.Engine.DrawSphereComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawSphereComponent : PrimitiveComponent
{
	public @property final bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
	public @property final bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
	public @property final bool bDrawLitSphere() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
	public @property final bool bDrawLitSphere(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
	public @property final bool bDrawWireSphere() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bDrawWireSphere(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref int SphereSides() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float SphereRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref Material SphereMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color SphereColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
