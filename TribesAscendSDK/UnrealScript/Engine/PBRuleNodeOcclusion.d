module UnrealScript.Engine.PBRuleNodeOcclusion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeOcclusion : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeOcclusion")); }
	private static __gshared PBRuleNodeOcclusion mDefaultProperties;
	@property final static PBRuleNodeOcclusion DefaultProperties() { mixin(MGDPC("PBRuleNodeOcclusion", "PBRuleNodeOcclusion Engine.Default__PBRuleNodeOcclusion")); }
}
