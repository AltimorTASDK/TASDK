module UnrealScript.Engine.PBRuleNodeSize;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSize : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeSize")()); }
	private static __gshared PBRuleNodeSize mDefaultProperties;
	@property final static PBRuleNodeSize DefaultProperties() { mixin(MGDPC!(PBRuleNodeSize, "PBRuleNodeSize Engine.Default__PBRuleNodeSize")()); }
	@property final
	{
		auto ref
		{
			float DecisionSize() { mixin(MGPC!(float, 108)()); }
			ProcBuildingRuleset.EProcBuildingAxis SizeAxis() { mixin(MGPC!(ProcBuildingRuleset.EProcBuildingAxis, 104)()); }
		}
		bool bUseTopLevelScopeSize() { mixin(MGBPC!(112, 0x1)()); }
		bool bUseTopLevelScopeSize(bool val) { mixin(MSBPC!(112, 0x1)()); }
	}
}
