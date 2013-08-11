module UnrealScript.Engine.PBRuleNodeQuad;

import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeQuad : PBRuleNodeBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			int QuadLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			float RepeatMaxSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float RepeatMaxSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
		bool bDisableMaterialRepeat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bDisableMaterialRepeat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
}
