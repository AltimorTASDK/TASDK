module UnrealScript.Engine.AnimTree;

import ScriptClasses;
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
	struct AnimGroup
	{
		public @property final auto ref ScriptArray!(AnimNodeSequence) SeqNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)&this + 0); }
		private ubyte __SeqNodes[12];
		public @property final auto ref float SynchPctPosition() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __SynchPctPosition[4];
		public @property final auto ref float RateScale() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __RateScale[4];
		public @property final auto ref ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __GroupName[8];
		public @property final auto ref AnimNodeSequence NotifyMaster() { return *cast(AnimNodeSequence*)(cast(size_t)&this + 16); }
		private ubyte __NotifyMaster[4];
		public @property final auto ref AnimNodeSequence SynchMaster() { return *cast(AnimNodeSequence*)(cast(size_t)&this + 12); }
		private ubyte __SynchMaster[4];
	}
	struct SkelControlListHead
	{
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __DrawY[4];
		public @property final auto ref SkelControlBase ControlHead() { return *cast(SkelControlBase*)(cast(size_t)&this + 8); }
		private ubyte __ControlHead[4];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
	}
	struct PreviewSkelMeshStruct
	{
		public @property final auto ref ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)&this + 12); }
		private ubyte __PreviewMorphSets[12];
		public @property final auto ref SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)&this + 8); }
		private ubyte __PreviewSkelMesh[4];
		public @property final auto ref ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __DisplayName[8];
	}
	struct PreviewSocketStruct
	{
		public @property final auto ref StaticMesh PreviewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)&this + 20); }
		private ubyte __PreviewStaticMesh[4];
		public @property final auto ref SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)&this + 16); }
		private ubyte __PreviewSkelMesh[4];
		public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __SocketName[8];
		public @property final auto ref ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __DisplayName[8];
	}
	struct PreviewAnimSetsStruct
	{
		public @property final auto ref ScriptArray!(AnimSet) PreviewAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)&this + 8); }
		private ubyte __PreviewAnimSets[12];
		public @property final auto ref ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __DisplayName[8];
	}
	public @property final auto ref ScriptArray!(AnimTree.AnimGroup) AnimGroups() { return *cast(ScriptArray!(AnimTree.AnimGroup)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(ScriptName) PrioritizedSkelBranches() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptArray!(ScriptName) ComposePrePassBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptArray!(ScriptName) ComposePostPassBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptArray!(MorphNodeBase) RootMorphNodes() { return *cast(ScriptArray!(MorphNodeBase)*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref ScriptArray!(AnimTree.SkelControlListHead) SkelControlLists() { return *cast(ScriptArray!(AnimTree.SkelControlListHead)*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) SavedPose() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref ScriptArray!(AnimSet) PreviewAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ScriptArray!(AnimTree.PreviewSkelMeshStruct) PreviewMeshList() { return *cast(ScriptArray!(AnimTree.PreviewSkelMeshStruct)*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(AnimTree.PreviewSocketStruct) PreviewSocketList() { return *cast(ScriptArray!(AnimTree.PreviewSocketStruct)*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptArray!(AnimTree.PreviewAnimSetsStruct) PreviewAnimSetList() { return *cast(ScriptArray!(AnimTree.PreviewAnimSetsStruct)*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref ScriptArray!(AnimNode) AnimTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int PreviewFloorYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref Vector PreviewFloorPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref Rotator PreviewCamRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref Vector PreviewCamPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref int PreviewAnimSetIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref int PreviewAnimSetListIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref int PreviewSocketIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref int PreviewMeshIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref StaticMesh SocketStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref SkeletalMesh SocketSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float PreviewPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref int MorphConnDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 332); }
	public @property final bool bRebuildAnimTickArray() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x8) != 0; }
	public @property final bool bRebuildAnimTickArray(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x8; } return val; }
	public @property final bool bParentNodeArrayBuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x4) != 0; }
	public @property final bool bParentNodeArrayBuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x4; } return val; }
	public @property final bool bBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x2) != 0; }
	public @property final bool bBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x2; } return val; }
	public @property final bool bUseSavedPose() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x1) != 0; }
	public @property final bool bUseSavedPose(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x1; } return val; }
	final SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11570], params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	final MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11573], params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	final void SetUseSavedPose(bool bUseSaved)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseSaved;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11576], params.ptr, cast(void*)0);
	}
	final bool SetAnimGroupForNode(AnimNodeSequence SeqNode, ScriptName GroupName, bool bCreateIfNotFound)
	{
		ubyte params[20];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		*cast(bool*)&params[12] = bCreateIfNotFound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11578], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final AnimNodeSequence GetGroupSynchMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11583], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	final AnimNodeSequence GetGroupNotifyMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11586], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	final void ForceGroupRelativePosition(ScriptName GroupName, float RelativePosition)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = RelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11589], params.ptr, cast(void*)0);
	}
	final float GetGroupRelativePosition(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11592], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void SetGroupRateScale(ScriptName GroupName, float NewRateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = NewRateScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11595], params.ptr, cast(void*)0);
	}
	final float GetGroupRateScale(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11598], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final int GetGroupIndex(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11601], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
