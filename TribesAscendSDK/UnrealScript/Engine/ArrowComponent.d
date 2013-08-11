module UnrealScript.Engine.ArrowComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ArrowComponent : PrimitiveComponent
{
	public @property final bool bTreatAsASprite() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
	public @property final bool bTreatAsASprite(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	public @property final auto ref float ArrowSize() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color ArrowColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
