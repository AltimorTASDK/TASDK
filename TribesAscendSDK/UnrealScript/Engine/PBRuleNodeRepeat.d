module UnrealScript.Engine.PBRuleNodeRepeat;

import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRepeat : PBRuleNodeBase
{
public extern(D):
	@property final auto ref
	{
		float RepeatMaxSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
	}
}
