module UnrealScript.Engine.PBRuleNodeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeBase")); }
	private static __gshared PBRuleNodeBase mDefaultProperties;
	@property final static PBRuleNodeBase DefaultProperties() { mixin(MGDPC("PBRuleNodeBase", "PBRuleNodeBase Engine.Default__PBRuleNodeBase")); }
	struct PBRuleLink
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.PBRuleNodeBase.PBRuleLink")); }
		@property final auto ref
		{
			int DrawY() { mixin(MGPS("int", 12)); }
			ScriptName LinkName() { mixin(MGPS("ScriptName", 4)); }
			PBRuleNodeBase NextRule() { mixin(MGPS("PBRuleNodeBase", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeBase.PBRuleLink) NextRules() { mixin(MGPC("ScriptArray!(PBRuleNodeBase.PBRuleLink)", 60)); }
		int DrawHeight() { mixin(MGPC("int", 100)); }
		int DrawWidth() { mixin(MGPC("int", 96)); }
		int InDrawY() { mixin(MGPC("int", 92)); }
		int RulePosY() { mixin(MGPC("int", 88)); }
		int RulePosX() { mixin(MGPC("int", 84)); }
		ScriptString Comment() { mixin(MGPC("ScriptString", 72)); }
	}
}
