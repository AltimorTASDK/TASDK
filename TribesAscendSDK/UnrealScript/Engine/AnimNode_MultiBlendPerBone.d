module UnrealScript.Engine.AnimNode_MultiBlendPerBone;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode_MultiBlendPerBone : AnimNodeBlendBase
{
	enum EWeightCheck : ubyte
	{
		EWC_AnimNodeSlotNotPlaying = 0,
		EWC_MAX = 1,
	}
	enum EBlendType : ubyte
	{
		EBT_ParentBoneSpace = 0,
		EBT_MeshSpace = 1,
		EBT_MAX = 2,
	}
	struct WeightNodeRule
	{
		public @property final auto ref int ChildIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __ChildIndex[4];
		public @property final auto ref AnimNode_MultiBlendPerBone.EWeightCheck WeightCheck() { return *cast(AnimNode_MultiBlendPerBone.EWeightCheck*)(cast(size_t)&this + 16); }
		private ubyte __WeightCheck[1];
		public @property final auto ref AnimNodeSlot CachedSlotNode() { return *cast(AnimNodeSlot*)(cast(size_t)&this + 12); }
		private ubyte __CachedSlotNode[4];
		public @property final auto ref AnimNodeBlendBase CachedNode() { return *cast(AnimNodeBlendBase*)(cast(size_t)&this + 8); }
		private ubyte __CachedNode[4];
		public @property final auto ref ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __NodeName[8];
	}
	struct WeightRule
	{
		public @property final auto ref AnimNode_MultiBlendPerBone.WeightNodeRule SecondNode() { return *cast(AnimNode_MultiBlendPerBone.WeightNodeRule*)(cast(size_t)&this + 24); }
		private ubyte __SecondNode[24];
		public @property final auto ref AnimNode_MultiBlendPerBone.WeightNodeRule FirstNode() { return *cast(AnimNode_MultiBlendPerBone.WeightNodeRule*)(cast(size_t)&this + 0); }
		private ubyte __FirstNode[24];
	}
	struct BranchInfo
	{
		public @property final auto ref float PerBoneWeightIncrease() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __PerBoneWeightIncrease[4];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
	}
	struct PerBoneMaskInfo
	{
		public @property final auto ref ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo) BranchList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo)*)(cast(size_t)&this + 0); }
		private ubyte __BranchList[12];
		public @property final auto ref ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule) WeightRuleList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule)*)(cast(size_t)&this + 20); }
		private ubyte __WeightRuleList[12];
		public @property final auto ref ScriptArray!(float) PerBoneWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 36); }
		private ubyte __PerBoneWeights[12];
		public @property final auto ref ScriptArray!(ubyte) TransformReqBone() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 48); }
		private ubyte __TransformReqBone[12];
		public @property final auto ref int TransformReqBoneIndex() { return *cast(int*)(cast(size_t)&this + 60); }
		private ubyte __TransformReqBoneIndex[4];
		public @property final bool bPendingBlend() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
		public @property final bool bPendingBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
		private ubyte __bPendingBlend[4];
		public @property final bool bDisableForNonLocalHumanPlayers() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
		public @property final bool bDisableForNonLocalHumanPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
		private ubyte __bDisableForNonLocalHumanPlayers[4];
		public @property final bool bWeightBasedOnNodeRules() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bWeightBasedOnNodeRules(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bWeightBasedOnNodeRules[4];
		public @property final auto ref float BlendTimeToGo() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __BlendTimeToGo[4];
		public @property final auto ref float DesiredWeight() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __DesiredWeight[4];
	}
	public @property final auto ref Pawn PawnOwner() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo) MaskList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo)*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref AnimNode_MultiBlendPerBone.EBlendType RotationBlendType() { return *cast(AnimNode_MultiBlendPerBone.EBlendType*)(cast(size_t)cast(void*)this + 260); }
	final void SetMaskWeight(int MaskIndex, float DesiredWeight, float BlendTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = MaskIndex;
		*cast(float*)&params[4] = DesiredWeight;
		*cast(float*)&params[8] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10744], params.ptr, cast(void*)0);
	}
}
