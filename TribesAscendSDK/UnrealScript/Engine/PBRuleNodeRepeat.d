module UnrealScript.Engine.PBRuleNodeRepeat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRepeat : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeRepeat")()); }
	private static __gshared PBRuleNodeRepeat mDefaultProperties;
	@property final static PBRuleNodeRepeat DefaultProperties() { mixin(MGDPC!(PBRuleNodeRepeat, "PBRuleNodeRepeat Engine.Default__PBRuleNodeRepeat")()); }
	@property final auto ref
	{
		float RepeatMaxSize() { mixin(MGPC!("float", 108)()); }
		ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { mixin(MGPC!("ProcBuildingRuleset.EProcBuildingAxis", 104)()); }
	}
}
