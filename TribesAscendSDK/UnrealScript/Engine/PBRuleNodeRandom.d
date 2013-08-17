module UnrealScript.Engine.PBRuleNodeRandom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRandom : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeRandom")()); }
	private static __gshared PBRuleNodeRandom mDefaultProperties;
	@property final static PBRuleNodeRandom DefaultProperties() { mixin(MGDPC!(PBRuleNodeRandom, "PBRuleNodeRandom Engine.Default__PBRuleNodeRandom")()); }
	@property final auto ref
	{
		int MaxNumExecuted() { mixin(MGPC!("int", 112)()); }
		int MinNumExecuted() { mixin(MGPC!("int", 108)()); }
		int NumOutputs() { mixin(MGPC!("int", 104)()); }
	}
}
