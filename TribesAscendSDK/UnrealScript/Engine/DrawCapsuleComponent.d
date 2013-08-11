module UnrealScript.Engine.DrawCapsuleComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCapsuleComponent : PrimitiveComponent
{
	public @property final bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
	public @property final bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
	public @property final bool bDrawLitCapsule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
	public @property final bool bDrawLitCapsule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
	public @property final bool bDrawWireCapsule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bDrawWireCapsule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref Material CapsuleMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color CapsuleColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
