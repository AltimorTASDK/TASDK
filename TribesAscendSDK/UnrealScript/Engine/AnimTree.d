module UnrealScript.Engine.AnimTree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.AnimNodeBlendBase;
import UnrealScript.Engine.SkelControlBase;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.MorphNodeBase;
import UnrealScript.Engine.AnimNode;

extern(C++) interface AnimTree : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimTree")()); }
	private static __gshared AnimTree mDefaultProperties;
	@property final static AnimTree DefaultProperties() { mixin(MGDPC!(AnimTree, "AnimTree Engine.Default__AnimTree")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindSkelControl;
			ScriptFunction mFindMorphNode;
			ScriptFunction mSetUseSavedPose;
			ScriptFunction mSetAnimGroupForNode;
			ScriptFunction mGetGroupSynchMaster;
			ScriptFunction mGetGroupNotifyMaster;
			ScriptFunction mForceGroupRelativePosition;
			ScriptFunction mGetGroupRelativePosition;
			ScriptFunction mSetGroupRateScale;
			ScriptFunction mGetGroupRateScale;
			ScriptFunction mGetGroupIndex;
		}
		public @property static final
		{
			ScriptFunction FindSkelControl() { mixin(MGF!("mFindSkelControl", "Function Engine.AnimTree.FindSkelControl")()); }
			ScriptFunction FindMorphNode() { mixin(MGF!("mFindMorphNode", "Function Engine.AnimTree.FindMorphNode")()); }
			ScriptFunction SetUseSavedPose() { mixin(MGF!("mSetUseSavedPose", "Function Engine.AnimTree.SetUseSavedPose")()); }
			ScriptFunction SetAnimGroupForNode() { mixin(MGF!("mSetAnimGroupForNode", "Function Engine.AnimTree.SetAnimGroupForNode")()); }
			ScriptFunction GetGroupSynchMaster() { mixin(MGF!("mGetGroupSynchMaster", "Function Engine.AnimTree.GetGroupSynchMaster")()); }
			ScriptFunction GetGroupNotifyMaster() { mixin(MGF!("mGetGroupNotifyMaster", "Function Engine.AnimTree.GetGroupNotifyMaster")()); }
			ScriptFunction ForceGroupRelativePosition() { mixin(MGF!("mForceGroupRelativePosition", "Function Engine.AnimTree.ForceGroupRelativePosition")()); }
			ScriptFunction GetGroupRelativePosition() { mixin(MGF!("mGetGroupRelativePosition", "Function Engine.AnimTree.GetGroupRelativePosition")()); }
			ScriptFunction SetGroupRateScale() { mixin(MGF!("mSetGroupRateScale", "Function Engine.AnimTree.SetGroupRateScale")()); }
			ScriptFunction GetGroupRateScale() { mixin(MGF!("mGetGroupRateScale", "Function Engine.AnimTree.GetGroupRateScale")()); }
			ScriptFunction GetGroupIndex() { mixin(MGF!("mGetGroupIndex", "Function Engine.AnimTree.GetGroupIndex")()); }
		}
	}
	struct AnimGroup
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimTree.AnimGroup")()); }
		@property final auto ref
		{
			ScriptArray!(AnimNodeSequence) SeqNodes() { mixin(MGPS!("ScriptArray!(AnimNodeSequence)", 0)()); }
			float SynchPctPosition() { mixin(MGPS!("float", 32)()); }
			float RateScale() { mixin(MGPS!("float", 28)()); }
			ScriptName GroupName() { mixin(MGPS!("ScriptName", 20)()); }
			AnimNodeSequence NotifyMaster() { mixin(MGPS!("AnimNodeSequence", 16)()); }
			AnimNodeSequence SynchMaster() { mixin(MGPS!("AnimNodeSequence", 12)()); }
		}
	}
	struct SkelControlListHead
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimTree.SkelControlListHead")()); }
		@property final auto ref
		{
			int DrawY() { mixin(MGPS!("int", 12)()); }
			SkelControlBase ControlHead() { mixin(MGPS!("SkelControlBase", 8)()); }
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct PreviewSkelMeshStruct
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimTree.PreviewSkelMeshStruct")()); }
		@property final auto ref
		{
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { mixin(MGPS!("ScriptArray!(MorphTargetSet)", 12)()); }
			SkeletalMesh PreviewSkelMesh() { mixin(MGPS!("SkeletalMesh", 8)()); }
			ScriptName DisplayName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct PreviewSocketStruct
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimTree.PreviewSocketStruct")()); }
		@property final auto ref
		{
			StaticMesh PreviewStaticMesh() { mixin(MGPS!("StaticMesh", 20)()); }
			SkeletalMesh PreviewSkelMesh() { mixin(MGPS!("SkeletalMesh", 16)()); }
			ScriptName SocketName() { mixin(MGPS!("ScriptName", 8)()); }
			ScriptName DisplayName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct PreviewAnimSetsStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimTree.PreviewAnimSetsStruct")()); }
		@property final auto ref
		{
			ScriptArray!(AnimSet) PreviewAnimSets() { mixin(MGPS!("ScriptArray!(AnimSet)", 8)()); }
			ScriptName DisplayName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimTree.AnimGroup) AnimGroups() { mixin(MGPC!("ScriptArray!(AnimTree.AnimGroup)", 244)()); }
			ScriptArray!(ScriptName) PrioritizedSkelBranches() { mixin(MGPC!("ScriptArray!(ScriptName)", 256)()); }
			ScriptArray!(ScriptName) ComposePrePassBoneNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 268)()); }
			ScriptArray!(ScriptName) ComposePostPassBoneNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 280)()); }
			ScriptArray!(MorphNodeBase) RootMorphNodes() { mixin(MGPC!("ScriptArray!(MorphNodeBase)", 292)()); }
			ScriptArray!(AnimTree.SkelControlListHead) SkelControlLists() { mixin(MGPC!("ScriptArray!(AnimTree.SkelControlListHead)", 304)()); }
			ScriptArray!(UObject.BoneAtom) SavedPose() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 316)()); }
			ScriptArray!(AnimSet) PreviewAnimSets() { mixin(MGPC!("ScriptArray!(AnimSet)", 360)()); }
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { mixin(MGPC!("ScriptArray!(MorphTargetSet)", 372)()); }
			ScriptArray!(AnimTree.PreviewSkelMeshStruct) PreviewMeshList() { mixin(MGPC!("ScriptArray!(AnimTree.PreviewSkelMeshStruct)", 384)()); }
			ScriptArray!(AnimTree.PreviewSocketStruct) PreviewSocketList() { mixin(MGPC!("ScriptArray!(AnimTree.PreviewSocketStruct)", 400)()); }
			ScriptArray!(AnimTree.PreviewAnimSetsStruct) PreviewAnimSetList() { mixin(MGPC!("ScriptArray!(AnimTree.PreviewAnimSetsStruct)", 416)()); }
			ScriptArray!(AnimNode) AnimTickArray() { mixin(MGPC!("ScriptArray!(AnimNode)", 476)()); }
			int PreviewFloorYaw() { mixin(MGPC!("int", 472)()); }
			Vector PreviewFloorPos() { mixin(MGPC!("Vector", 460)()); }
			Rotator PreviewCamRot() { mixin(MGPC!("Rotator", 448)()); }
			Vector PreviewCamPos() { mixin(MGPC!("Vector", 436)()); }
			int PreviewAnimSetIndex() { mixin(MGPC!("int", 432)()); }
			int PreviewAnimSetListIndex() { mixin(MGPC!("int", 428)()); }
			int PreviewSocketIndex() { mixin(MGPC!("int", 412)()); }
			int PreviewMeshIndex() { mixin(MGPC!("int", 396)()); }
			ScriptName SocketName() { mixin(MGPC!("ScriptName", 352)()); }
			StaticMesh SocketStaticMesh() { mixin(MGPC!("StaticMesh", 348)()); }
			SkeletalMesh SocketSkelMesh() { mixin(MGPC!("SkeletalMesh", 344)()); }
			SkeletalMesh PreviewSkelMesh() { mixin(MGPC!("SkeletalMesh", 340)()); }
			float PreviewPlayRate() { mixin(MGPC!("float", 336)()); }
			int MorphConnDrawY() { mixin(MGPC!("int", 332)()); }
		}
		bool bRebuildAnimTickArray() { mixin(MGBPC!(328, 0x8)()); }
		bool bRebuildAnimTickArray(bool val) { mixin(MSBPC!(328, 0x8)()); }
		bool bParentNodeArrayBuilt() { mixin(MGBPC!(328, 0x4)()); }
		bool bParentNodeArrayBuilt(bool val) { mixin(MSBPC!(328, 0x4)()); }
		bool bBeingEdited() { mixin(MGBPC!(328, 0x2)()); }
		bool bBeingEdited(bool val) { mixin(MSBPC!(328, 0x2)()); }
		bool bUseSavedPose() { mixin(MGBPC!(328, 0x1)()); }
		bool bUseSavedPose(bool val) { mixin(MSBPC!(328, 0x1)()); }
	}
final:
	SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSkelControl, params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMorphNode, params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	void SetUseSavedPose(bool bUseSaved)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseSaved;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUseSavedPose, params.ptr, cast(void*)0);
	}
	bool SetAnimGroupForNode(AnimNodeSequence SeqNode, ScriptName GroupName, bool* bCreateIfNotFound = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		if (bCreateIfNotFound !is null)
			*cast(bool*)&params[12] = *bCreateIfNotFound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimGroupForNode, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	AnimNodeSequence GetGroupSynchMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupSynchMaster, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	AnimNodeSequence GetGroupNotifyMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupNotifyMaster, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	void ForceGroupRelativePosition(ScriptName GroupName, float RelativePosition)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = RelativePosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceGroupRelativePosition, params.ptr, cast(void*)0);
	}
	float GetGroupRelativePosition(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupRelativePosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void SetGroupRateScale(ScriptName GroupName, float NewRateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = NewRateScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGroupRateScale, params.ptr, cast(void*)0);
	}
	float GetGroupRateScale(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupRateScale, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	int GetGroupIndex(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
