module UnrealScript.Engine.PBRuleNodeSplit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSplit : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeSplit")()); }
	private static __gshared PBRuleNodeSplit mDefaultProperties;
	@property final static PBRuleNodeSplit DefaultProperties() { mixin(MGDPC!(PBRuleNodeSplit, "PBRuleNodeSplit Engine.Default__PBRuleNodeSplit")()); }
	struct RBSplitInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PBRuleNodeSplit.RBSplitInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptName SplitName() { mixin(MGPS!("ScriptName", 12)()); }
				float ExpandRatio() { mixin(MGPS!("float", 8)()); }
				float FixedSize() { mixin(MGPS!("float", 4)()); }
			}
			bool bFixSize() { mixin(MGBPS!(0, 0x1)()); }
			bool bFixSize(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeSplit.RBSplitInfo) SplitSetup() { mixin(MGPC!("ScriptArray!(PBRuleNodeSplit.RBSplitInfo)", 108)()); }
		ProcBuildingRuleset.EProcBuildingAxis SplitAxis() { mixin(MGPC!("ProcBuildingRuleset.EProcBuildingAxis", 104)()); }
	}
}
