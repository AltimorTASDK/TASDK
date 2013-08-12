module UnrealScript.Engine.AnimNode_MultiBlendPerBone;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode_MultiBlendPerBone : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNode_MultiBlendPerBone")); }
	private static __gshared AnimNode_MultiBlendPerBone mDefaultProperties;
	@property final static AnimNode_MultiBlendPerBone DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNode_MultiBlendPerBone)("AnimNode_MultiBlendPerBone Engine.Default__AnimNode_MultiBlendPerBone")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetMaskWeight;
		public @property static final ScriptFunction SetMaskWeight() { return mSetMaskWeight ? mSetMaskWeight : (mSetMaskWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode_MultiBlendPerBone.SetMaskWeight")); }
	}
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
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNode_MultiBlendPerBone.WeightNodeRule")); }
		@property final auto ref
		{
			int ChildIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			AnimNode_MultiBlendPerBone.EWeightCheck WeightCheck() { return *cast(AnimNode_MultiBlendPerBone.EWeightCheck*)(cast(size_t)&this + 16); }
			AnimNodeSlot CachedSlotNode() { return *cast(AnimNodeSlot*)(cast(size_t)&this + 12); }
			AnimNodeBlendBase CachedNode() { return *cast(AnimNodeBlendBase*)(cast(size_t)&this + 8); }
			ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct WeightRule
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNode_MultiBlendPerBone.WeightRule")); }
		@property final auto ref
		{
			AnimNode_MultiBlendPerBone.WeightNodeRule SecondNode() { return *cast(AnimNode_MultiBlendPerBone.WeightNodeRule*)(cast(size_t)&this + 24); }
			AnimNode_MultiBlendPerBone.WeightNodeRule FirstNode() { return *cast(AnimNode_MultiBlendPerBone.WeightNodeRule*)(cast(size_t)&this + 0); }
		}
	}
	struct BranchInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNode_MultiBlendPerBone.BranchInfo")); }
		@property final auto ref
		{
			float PerBoneWeightIncrease() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PerBoneMaskInfo
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNode_MultiBlendPerBone.PerBoneMaskInfo")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo) BranchList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo)*)(cast(size_t)&this + 0); }
				ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule) WeightRuleList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule)*)(cast(size_t)&this + 20); }
				ScriptArray!(float) PerBoneWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 36); }
				ScriptArray!(ubyte) TransformReqBone() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 48); }
				int TransformReqBoneIndex() { return *cast(int*)(cast(size_t)&this + 60); }
				float BlendTimeToGo() { return *cast(float*)(cast(size_t)&this + 16); }
				float DesiredWeight() { return *cast(float*)(cast(size_t)&this + 12); }
			}
			bool bPendingBlend() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
			bool bPendingBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
			bool bDisableForNonLocalHumanPlayers() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
			bool bDisableForNonLocalHumanPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
			bool bWeightBasedOnNodeRules() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bWeightBasedOnNodeRules(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		Pawn PawnOwner() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 244); }
		ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo) MaskList() { return *cast(ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo)*)(cast(size_t)cast(void*)this + 248); }
		AnimNode_MultiBlendPerBone.EBlendType RotationBlendType() { return *cast(AnimNode_MultiBlendPerBone.EBlendType*)(cast(size_t)cast(void*)this + 260); }
	}
	final void SetMaskWeight(int MaskIndex, float DesiredWeight, float BlendTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = MaskIndex;
		*cast(float*)&params[4] = DesiredWeight;
		*cast(float*)&params[8] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaskWeight, params.ptr, cast(void*)0);
	}
}
