module UnrealScript.Engine.AnimNode_MultiBlendPerBone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode_MultiBlendPerBone : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNode_MultiBlendPerBone")()); }
	private static __gshared AnimNode_MultiBlendPerBone mDefaultProperties;
	@property final static AnimNode_MultiBlendPerBone DefaultProperties() { mixin(MGDPC!(AnimNode_MultiBlendPerBone, "AnimNode_MultiBlendPerBone Engine.Default__AnimNode_MultiBlendPerBone")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetMaskWeight;
		public @property static final ScriptFunction SetMaskWeight() { mixin(MGF!("mSetMaskWeight", "Function Engine.AnimNode_MultiBlendPerBone.SetMaskWeight")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNode_MultiBlendPerBone.WeightNodeRule")()); }
		@property final auto ref
		{
			int ChildIndex() { mixin(MGPS!("int", 20)()); }
			AnimNode_MultiBlendPerBone.EWeightCheck WeightCheck() { mixin(MGPS!("AnimNode_MultiBlendPerBone.EWeightCheck", 16)()); }
			AnimNodeSlot CachedSlotNode() { mixin(MGPS!("AnimNodeSlot", 12)()); }
			AnimNodeBlendBase CachedNode() { mixin(MGPS!("AnimNodeBlendBase", 8)()); }
			ScriptName NodeName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct WeightRule
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNode_MultiBlendPerBone.WeightRule")()); }
		@property final auto ref
		{
			AnimNode_MultiBlendPerBone.WeightNodeRule SecondNode() { mixin(MGPS!("AnimNode_MultiBlendPerBone.WeightNodeRule", 24)()); }
			AnimNode_MultiBlendPerBone.WeightNodeRule FirstNode() { mixin(MGPS!("AnimNode_MultiBlendPerBone.WeightNodeRule", 0)()); }
		}
	}
	struct BranchInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNode_MultiBlendPerBone.BranchInfo")()); }
		@property final auto ref
		{
			float PerBoneWeightIncrease() { mixin(MGPS!("float", 8)()); }
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct PerBoneMaskInfo
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNode_MultiBlendPerBone.PerBoneMaskInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo) BranchList() { mixin(MGPS!("ScriptArray!(AnimNode_MultiBlendPerBone.BranchInfo)", 0)()); }
				ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule) WeightRuleList() { mixin(MGPS!("ScriptArray!(AnimNode_MultiBlendPerBone.WeightRule)", 20)()); }
				ScriptArray!(float) PerBoneWeights() { mixin(MGPS!("ScriptArray!(float)", 36)()); }
				ScriptArray!(ubyte) TransformReqBone() { mixin(MGPS!("ScriptArray!(ubyte)", 48)()); }
				int TransformReqBoneIndex() { mixin(MGPS!("int", 60)()); }
				float BlendTimeToGo() { mixin(MGPS!("float", 16)()); }
				float DesiredWeight() { mixin(MGPS!("float", 12)()); }
			}
			bool bPendingBlend() { mixin(MGBPS!(32, 0x4)()); }
			bool bPendingBlend(bool val) { mixin(MSBPS!(32, 0x4)()); }
			bool bDisableForNonLocalHumanPlayers() { mixin(MGBPS!(32, 0x2)()); }
			bool bDisableForNonLocalHumanPlayers(bool val) { mixin(MSBPS!(32, 0x2)()); }
			bool bWeightBasedOnNodeRules() { mixin(MGBPS!(32, 0x1)()); }
			bool bWeightBasedOnNodeRules(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	@property final auto ref
	{
		Pawn PawnOwner() { mixin(MGPC!("Pawn", 244)()); }
		ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo) MaskList() { mixin(MGPC!("ScriptArray!(AnimNode_MultiBlendPerBone.PerBoneMaskInfo)", 248)()); }
		AnimNode_MultiBlendPerBone.EBlendType RotationBlendType() { mixin(MGPC!("AnimNode_MultiBlendPerBone.EBlendType", 260)()); }
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
