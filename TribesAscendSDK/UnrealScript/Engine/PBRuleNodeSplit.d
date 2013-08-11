module UnrealScript.Engine.PBRuleNodeSplit;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSplit : PBRuleNodeBase
{
	struct RBSplitInfo
	{
		public @property final auto ref ScriptName SplitName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		private ubyte __SplitName[8];
		public @property final auto ref float ExpandRatio() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ExpandRatio[4];
		public @property final auto ref float FixedSize() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __FixedSize[4];
		public @property final bool bFixSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bFixSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bFixSize[4];
	}
	public @property final auto ref ScriptArray!(PBRuleNodeSplit.RBSplitInfo) SplitSetup() { return *cast(ScriptArray!(PBRuleNodeSplit.RBSplitInfo)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ProcBuildingRuleset.EProcBuildingAxis SplitAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
}
