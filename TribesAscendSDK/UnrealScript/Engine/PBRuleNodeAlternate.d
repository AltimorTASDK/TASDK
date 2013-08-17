module UnrealScript.Engine.PBRuleNodeAlternate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeAlternate : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeAlternate")()); }
	private static __gshared PBRuleNodeAlternate mDefaultProperties;
	@property final static PBRuleNodeAlternate DefaultProperties() { mixin(MGDPC!(PBRuleNodeAlternate, "PBRuleNodeAlternate Engine.Default__PBRuleNodeAlternate")()); }
	@property final
	{
		auto ref
		{
			float BMaxSize() { mixin(MGPC!("float", 112)()); }
			float ASize() { mixin(MGPC!("float", 108)()); }
			ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { mixin(MGPC!("ProcBuildingRuleset.EProcBuildingAxis", 104)()); }
		}
		bool bEqualSizeAB() { mixin(MGBPC!(116, 0x2)()); }
		bool bEqualSizeAB(bool val) { mixin(MSBPC!(116, 0x2)()); }
		bool bInvertPatternOrder() { mixin(MGBPC!(116, 0x1)()); }
		bool bInvertPatternOrder(bool val) { mixin(MSBPC!(116, 0x1)()); }
	}
}
