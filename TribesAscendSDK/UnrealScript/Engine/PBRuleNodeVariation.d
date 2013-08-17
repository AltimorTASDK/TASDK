module UnrealScript.Engine.PBRuleNodeVariation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeVariation : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeVariation")); }
	private static __gshared PBRuleNodeVariation mDefaultProperties;
	@property final static PBRuleNodeVariation DefaultProperties() { mixin(MGDPC("PBRuleNodeVariation", "PBRuleNodeVariation Engine.Default__PBRuleNodeVariation")); }
	@property final
	{
		bool bVariationOfScopeOnLeft() { mixin(MGBPC(104, 0x1)); }
		bool bVariationOfScopeOnLeft(bool val) { mixin(MSBPC(104, 0x1)); }
	}
}
