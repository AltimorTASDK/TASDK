module UnrealScript.Engine.PBRuleNodeWindowWall;

import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeWindowWall : PBRuleNodeBase
{
	// WARNING: Property 'Material' has the same name as a defined type!
	public @property final auto ref float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bScaleWindowWithCell() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bScaleWindowWithCell(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref float WindowPosZ() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float WindowPosX() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float WindowSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float WindowSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float CellMaxSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float CellMaxSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
