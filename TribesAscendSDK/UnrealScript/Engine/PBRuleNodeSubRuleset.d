module UnrealScript.Engine.PBRuleNodeSubRuleset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSubRuleset : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeSubRuleset")); }
	private static __gshared PBRuleNodeSubRuleset mDefaultProperties;
	@property final static PBRuleNodeSubRuleset DefaultProperties() { mixin(MGDPC("PBRuleNodeSubRuleset", "PBRuleNodeSubRuleset Engine.Default__PBRuleNodeSubRuleset")); }
	@property final auto ref ProcBuildingRuleset SubRuleset() { mixin(MGPC("ProcBuildingRuleset", 104)); }
}
