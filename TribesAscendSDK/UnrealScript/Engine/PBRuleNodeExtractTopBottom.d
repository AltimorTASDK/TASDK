module UnrealScript.Engine.PBRuleNodeExtractTopBottom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeExtractTopBottom : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeExtractTopBottom")); }
	private static __gshared PBRuleNodeExtractTopBottom mDefaultProperties;
	@property final static PBRuleNodeExtractTopBottom DefaultProperties() { mixin(MGDPC("PBRuleNodeExtractTopBottom", "PBRuleNodeExtractTopBottom Engine.Default__PBRuleNodeExtractTopBottom")); }
	@property final auto ref
	{
		float ExtractNotBottomZ() { mixin(MGPC("float", 116)); }
		float ExtractBottomZ() { mixin(MGPC("float", 112)); }
		float ExtractNotTopZ() { mixin(MGPC("float", 108)); }
		float ExtractTopZ() { mixin(MGPC("float", 104)); }
	}
}
