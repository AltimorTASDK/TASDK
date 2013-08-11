module UnrealScript.Engine.PBRuleNodeAlternate;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeAlternate : PBRuleNodeBase
{
	public @property final bool bEqualSizeAB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bEqualSizeAB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bInvertPatternOrder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bInvertPatternOrder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final auto ref float BMaxSize() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float ASize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
}
