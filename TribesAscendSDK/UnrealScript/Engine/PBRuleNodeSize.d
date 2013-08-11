module UnrealScript.Engine.PBRuleNodeSize;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSize : PBRuleNodeBase
{
	public @property final bool bUseTopLevelScopeSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bUseTopLevelScopeSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final auto ref float DecisionSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ProcBuildingRuleset.EProcBuildingAxis SizeAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
}
