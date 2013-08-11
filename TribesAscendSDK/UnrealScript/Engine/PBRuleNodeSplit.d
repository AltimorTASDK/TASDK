module UnrealScript.Engine.PBRuleNodeSplit;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSplit : PBRuleNodeBase
{
public extern(D):
	struct RBSplitInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptName SplitName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
				float ExpandRatio() { return *cast(float*)(cast(size_t)&this + 8); }
				float FixedSize() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bFixSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bFixSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeSplit.RBSplitInfo) SplitSetup() { return *cast(ScriptArray!(PBRuleNodeSplit.RBSplitInfo)*)(cast(size_t)cast(void*)this + 108); }
		ProcBuildingRuleset.EProcBuildingAxis SplitAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
	}
}
