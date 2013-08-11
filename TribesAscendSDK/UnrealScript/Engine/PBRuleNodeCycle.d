module UnrealScript.Engine.PBRuleNodeCycle;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeCycle : PBRuleNodeBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			int CycleSize() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			float RepeatSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bFixRepeatSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bFixRepeatSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
}
