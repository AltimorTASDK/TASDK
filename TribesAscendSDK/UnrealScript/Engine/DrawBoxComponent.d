module UnrealScript.Engine.DrawBoxComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawBoxComponent : PrimitiveComponent
{
	public @property final bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x4) != 0; }
	public @property final bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x4; } return val; }
	public @property final bool bDrawLitBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x2) != 0; }
	public @property final bool bDrawLitBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x2; } return val; }
	public @property final bool bDrawWireBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x1) != 0; }
	public @property final bool bDrawWireBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x1; } return val; }
	public @property final auto ref Vector BoxExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref Material BoxMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color BoxColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
