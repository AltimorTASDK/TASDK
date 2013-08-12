module UnrealScript.Engine.PBRuleNodeSubRuleset;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSubRuleset : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeSubRuleset")); }
	private static __gshared PBRuleNodeSubRuleset mDefaultProperties;
	@property final static PBRuleNodeSubRuleset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeSubRuleset)("PBRuleNodeSubRuleset Engine.Default__PBRuleNodeSubRuleset")); }
	@property final auto ref ProcBuildingRuleset SubRuleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 104); }
}
