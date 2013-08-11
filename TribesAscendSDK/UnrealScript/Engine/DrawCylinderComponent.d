module UnrealScript.Engine.DrawCylinderComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCylinderComponent : PrimitiveComponent
{
	public @property final bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
	public @property final bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
	public @property final bool bDrawLitCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
	public @property final bool bDrawLitCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
	public @property final bool bDrawWireCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
	public @property final bool bDrawWireCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	public @property final auto ref int CylinderSides() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float CylinderHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float CylinderHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float CylinderTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float CylinderRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref Material CylinderMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color CylinderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
