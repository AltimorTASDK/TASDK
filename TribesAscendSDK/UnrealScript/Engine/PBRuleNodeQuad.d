module UnrealScript.Engine.PBRuleNodeQuad;

import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeQuad : PBRuleNodeBase
{
	public @property final bool bDisableMaterialRepeat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bDisableMaterialRepeat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final auto ref float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int QuadLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float RepeatMaxSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float RepeatMaxSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	// WARNING: Property 'Material' has the same name as a defined type!
}
