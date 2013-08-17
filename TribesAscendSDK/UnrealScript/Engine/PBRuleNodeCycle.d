module UnrealScript.Engine.PBRuleNodeCycle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeCycle : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeCycle")()); }
	private static __gshared PBRuleNodeCycle mDefaultProperties;
	@property final static PBRuleNodeCycle DefaultProperties() { mixin(MGDPC!(PBRuleNodeCycle, "PBRuleNodeCycle Engine.Default__PBRuleNodeCycle")()); }
	@property final
	{
		auto ref
		{
			int CycleSize() { mixin(MGPC!("int", 112)()); }
			float RepeatSize() { mixin(MGPC!("float", 108)()); }
			ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { mixin(MGPC!("ProcBuildingRuleset.EProcBuildingAxis", 104)()); }
		}
		bool bFixRepeatSize() { mixin(MGBPC!(116, 0x1)()); }
		bool bFixRepeatSize(bool val) { mixin(MSBPC!(116, 0x1)()); }
	}
}
