module UnrealScript.Engine.PBRuleNodeRepeat;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRepeat : PBRuleNodeBase
{
	public @property final auto ref float RepeatMaxSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
}
