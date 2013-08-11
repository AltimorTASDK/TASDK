module UnrealScript.Engine.PBRuleNodeSubRuleset;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSubRuleset : PBRuleNodeBase
{
	public @property final auto ref ProcBuildingRuleset SubRuleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 104); }
}
