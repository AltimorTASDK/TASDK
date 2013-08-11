module UnrealScript.Engine.SkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.PhysicsAssetInstance;
import UnrealScript.Engine.AnimTree;
import UnrealScript.Engine.SkeletalMeshSocket;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MeshComponent;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.MorphNodeBase;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;

extern(C++) interface SkeletalMeshComponent : MeshComponent
{
	enum EPhysBodyOp : ubyte
	{
		PBO_None = 0,
		PBO_Term = 1,
		PBO_Disable = 2,
		PBO_MAX = 3,
	}
	enum EFaceFXRegOp : ubyte
	{
		FXRO_Add = 0,
		FXRO_Multiply = 1,
		FXRO_Replace = 2,
		FXRO_MAX = 3,
	}
	enum EFaceFXBlendMode : ubyte
	{
		FXBM_Overwrite = 0,
		FXBM_Additive = 1,
		FXBM_MAX = 2,
	}
	enum EInstanceWeightUsage : ubyte
	{
		IWU_PartialSwap = 0,
		IWU_FullSwap = 1,
		IWU_MAX = 2,
	}
	enum ERootMotionRotationMode : ubyte
	{
		RMRM_Ignore = 0,
		RMRM_RotateActor = 1,
		RMRM_MAX = 2,
	}
	enum ERootMotionMode : ubyte
	{
		RMM_Translate = 0,
		RMM_Velocity = 1,
		RMM_Ignore = 2,
		RMM_Accel = 3,
		RMM_Relative = 4,
		RMM_MAX = 5,
	}
	enum EMaxDistanceScaleMode : ubyte
	{
		MDSM_Multiply = 0,
		MDSM_Substract = 1,
		MDSM_MAX = 2,
	}
	struct BonePair
	{
		public @property final auto ref ScriptName Bones() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Bones[8];
	}
	struct SkelMeshComponentLODInfo
	{
		public @property final auto ref SkeletalMeshComponent.EInstanceWeightUsage InstanceWeightUsage() { return *cast(SkeletalMeshComponent.EInstanceWeightUsage*)(cast(size_t)&this + 16); }
		private ubyte __InstanceWeightUsage[1];
		public @property final auto ref ScriptArray!(bool) HiddenMaterials() { return *cast(ScriptArray!(bool)*)(cast(size_t)&this + 0); }
		private ubyte __HiddenMaterials[12];
		public @property final bool bNeedsInstanceWeightUpdate() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bNeedsInstanceWeightUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bNeedsInstanceWeightUpdate[4];
		public @property final bool bAlwaysUseInstanceWeights() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
		public @property final bool bAlwaysUseInstanceWeights(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		private ubyte __bAlwaysUseInstanceWeights[4];
		public @property final auto ref int InstanceWeightIdx() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __InstanceWeightIdx[4];
	}
	struct Attachment
	{
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __BoneName[8];
		public @property final auto ref Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __RelativeLocation[12];
		public @property final auto ref Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)&this + 24); }
		private ubyte __RelativeRotation[12];
		public @property final auto ref Vector RelativeScale() { return *cast(Vector*)(cast(size_t)&this + 36); }
		private ubyte __RelativeScale[12];
	}
	struct ActiveMorph
	{
		public @property final auto ref MorphTarget Target() { return *cast(MorphTarget*)(cast(size_t)&this + 0); }
		private ubyte __Target[4];
		public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Weight[4];
	}
	public @property final auto ref AnimNode Animations() { return *cast(AnimNode*)(cast(size_t)cast(void*)this + 512); }
	// WARNING: Property 'PhysicsAssetInstance' has the same name as a defined type!
	public @property final auto ref ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo) LODInfo() { return *cast(ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo)*)(cast(size_t)cast(void*)this + 976); }
	// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
	// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
	public @property final auto ref AnimTree AnimTreeTemplate() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref ScriptArray!(AnimNode) AnimTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptArray!(AnimNode) AnimAlwaysTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptArray!(int) AnimTickRelevancyArray() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ScriptArray!(float) AnimTickWeightsArray() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref ScriptArray!(SkelControlBase) SkelControlTickArray() { return *cast(ScriptArray!(SkelControlBase)*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref UObject.Pointer ApexClothing() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float PhysicsWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float GlobalAnimRateScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref UObject.Pointer MeshObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) SpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) LocalAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) CachedLocalAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) CachedSpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref int LowUpdateFrameRate() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref ScriptArray!(ubyte) ComposeOrderedRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 668); }
	public @property final bool bShouldIgnoreParentAnimComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x1) != 0; }
	public @property final bool bShouldIgnoreParentAnimComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(int) ParentBoneMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref ScriptArray!(AnimSet) AnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref ScriptArray!(AnimSet) TemporarySavedAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref ScriptArray!(MorphTargetSet) MorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveMorphs() { return *cast(ScriptArray!(SkeletalMeshComponent.ActiveMorph)*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveCurveMorphs() { return *cast(ScriptArray!(SkeletalMeshComponent.ActiveMorph)*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref ScriptArray!(SkeletalMeshComponent.Attachment) Attachments() { return *cast(ScriptArray!(SkeletalMeshComponent.Attachment)*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref ScriptArray!(ubyte) SkelControlIndex() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref ScriptArray!(ubyte) PostPhysSkelControlIndex() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref int ForcedLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref int MinLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref int PredictedLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref int OldPredictedLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref float MaxDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
	public @property final auto ref int bForceWireframe() { return *cast(int*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref int bForceRefpose() { return *cast(int*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref int bOldForceRefPose() { return *cast(int*)(cast(size_t)cast(void*)this + 884); }
	public @property final bool bNoSkeletonUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 888) & 0x1) != 0; }
	public @property final bool bNoSkeletonUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 888) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 888) &= ~0x1; } return val; }
	public @property final auto ref int bDisplayBones() { return *cast(int*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref int bShowPrePhysBones() { return *cast(int*)(cast(size_t)cast(void*)this + 896); }
	public @property final auto ref int bHideSkin() { return *cast(int*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref int bForceRawOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref int bIgnoreControllers() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref int bTransformFromAnimParent() { return *cast(int*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref int TickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref int InitTag() { return *cast(int*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref int CachedAtomsTag() { return *cast(int*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref int bUseSingleBodyPhysics() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref int bRequiredBonesUpToDate() { return *cast(int*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref float MinDistFactorForKinematicUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref int FramesPhysicsAsleep() { return *cast(int*)(cast(size_t)cast(void*)this + 940); }
	public @property final bool bSkipAllUpdateWhenPhysicsAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1) != 0; }
	public @property final bool bSkipAllUpdateWhenPhysicsAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1; } return val; }
	public @property final bool bConsiderAllBodiesForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2) != 0; }
	public @property final bool bConsiderAllBodiesForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2; } return val; }
	public @property final bool bUpdateSkelWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4) != 0; }
	public @property final bool bUpdateSkelWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4; } return val; }
	public @property final bool bIgnoreControllersWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8) != 0; }
	public @property final bool bIgnoreControllersWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8; } return val; }
	public @property final bool bTickAnimNodesWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10) != 0; }
	public @property final bool bTickAnimNodesWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10; } return val; }
	public @property final bool bNotUpdatingKinematicDueToDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20) != 0; }
	public @property final bool bNotUpdatingKinematicDueToDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20; } return val; }
	public @property final bool bForceDiscardRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x40) != 0; }
	public @property final bool bForceDiscardRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x40; } return val; }
	public @property final bool bRootMotionModeChangeNotify() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x80) != 0; }
	public @property final bool bRootMotionModeChangeNotify(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x80; } return val; }
	public @property final bool bRootMotionExtractedNotify() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x100) != 0; }
	public @property final bool bRootMotionExtractedNotify(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x100; } return val; }
	public @property final bool bDisableFaceFXMaterialInstanceCreation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x200) != 0; }
	public @property final bool bDisableFaceFXMaterialInstanceCreation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x200; } return val; }
	public @property final bool bAnimTreeInitialised() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x400) != 0; }
	public @property final bool bAnimTreeInitialised(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x400; } return val; }
	public @property final bool bForceMeshObjectUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x800) != 0; }
	public @property final bool bForceMeshObjectUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x800; } return val; }
	public @property final bool bHasPhysicsAssetInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1000) != 0; }
	public @property final bool bHasPhysicsAssetInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1000; } return val; }
	public @property final bool bUpdateKinematicBonesFromAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2000) != 0; }
	public @property final bool bUpdateKinematicBonesFromAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2000; } return val; }
	public @property final bool bUpdateJointsFromAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4000) != 0; }
	public @property final bool bUpdateJointsFromAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4000; } return val; }
	public @property final bool bSkelCompFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8000) != 0; }
	public @property final bool bSkelCompFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8000; } return val; }
	public @property final bool bHasHadPhysicsBlendedIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10000) != 0; }
	public @property final bool bHasHadPhysicsBlendedIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10000; } return val; }
	public @property final bool bForceUpdateAttachmentsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20000) != 0; }
	public @property final bool bForceUpdateAttachmentsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20000; } return val; }
	public @property final bool bEnableFullAnimWeightBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x40000) != 0; }
	public @property final bool bEnableFullAnimWeightBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x40000; } return val; }
	public @property final bool bPerBoneVolumeEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x80000) != 0; }
	public @property final bool bPerBoneVolumeEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x80000; } return val; }
	public @property final bool bPerBoneMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x100000) != 0; }
	public @property final bool bPerBoneMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x100000; } return val; }
	public @property final bool bSyncActorLocationToRootRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x200000) != 0; }
	public @property final bool bSyncActorLocationToRootRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x200000; } return val; }
	public @property final bool bUseRawData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x400000) != 0; }
	public @property final bool bUseRawData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x400000; } return val; }
	public @property final bool bDisableWarningWhenAnimNotFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x800000) != 0; }
	public @property final bool bDisableWarningWhenAnimNotFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x800000; } return val; }
	public @property final bool bOverrideAttachmentOwnerVisibility() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1000000) != 0; }
	public @property final bool bOverrideAttachmentOwnerVisibility(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1000000; } return val; }
	public @property final bool bNeedsToDeleteHitMask() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2000000) != 0; }
	public @property final bool bNeedsToDeleteHitMask(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2000000; } return val; }
	public @property final bool bPauseAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4000000) != 0; }
	public @property final bool bPauseAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4000000; } return val; }
	public @property final bool bChartDistanceFactor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8000000) != 0; }
	public @property final bool bChartDistanceFactor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8000000; } return val; }
	public @property final bool bEnableLineCheckWithBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10000000) != 0; }
	public @property final bool bEnableLineCheckWithBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10000000; } return val; }
	public @property final bool bCanHighlightSelectedSections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20000000) != 0; }
	public @property final bool bCanHighlightSelectedSections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20000000; } return val; }
	public @property final auto ref Vector LineCheckBoundsScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 948); }
	public @property final bool bEnableClothSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x1) != 0; }
	public @property final bool bEnableClothSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x1; } return val; }
	public @property final bool bDisableClothCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x2) != 0; }
	public @property final bool bDisableClothCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x2; } return val; }
	public @property final bool bClothFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x4) != 0; }
	public @property final bool bClothFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x4; } return val; }
	public @property final bool bAutoFreezeClothWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x8) != 0; }
	public @property final bool bAutoFreezeClothWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x8; } return val; }
	public @property final bool bClothAwakeOnStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x10) != 0; }
	public @property final bool bClothAwakeOnStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x10; } return val; }
	public @property final bool bClothBaseVelClamp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x20) != 0; }
	public @property final bool bClothBaseVelClamp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x20; } return val; }
	public @property final bool bClothBaseVelInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x40) != 0; }
	public @property final bool bClothBaseVelInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x40; } return val; }
	public @property final bool bAttachClothVertsToBaseBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x80) != 0; }
	public @property final bool bAttachClothVertsToBaseBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x80; } return val; }
	public @property final bool bIsClothOnStaticObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x100) != 0; }
	public @property final bool bIsClothOnStaticObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x100; } return val; }
	public @property final bool bUpdatedFixedClothVerts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x200) != 0; }
	public @property final bool bUpdatedFixedClothVerts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x200; } return val; }
	public @property final bool bClothPositionalDampening() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x400) != 0; }
	public @property final bool bClothPositionalDampening(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x400; } return val; }
	public @property final bool bClothWindRelativeToOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x800) != 0; }
	public @property final bool bClothWindRelativeToOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x800; } return val; }
	public @property final bool bRecentlyRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x1000) != 0; }
	public @property final bool bRecentlyRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x1000; } return val; }
	public @property final bool bCacheAnimSequenceNodes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x2000) != 0; }
	public @property final bool bCacheAnimSequenceNodes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x2000; } return val; }
	public @property final bool bNeedsInstanceWeightUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x4000) != 0; }
	public @property final bool bNeedsInstanceWeightUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x4000; } return val; }
	public @property final bool bAlwaysUseInstanceWeights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x8000) != 0; }
	public @property final bool bAlwaysUseInstanceWeights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x8000; } return val; }
	public @property final bool bUpdateComposeSkeletonPasses() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x10000) != 0; }
	public @property final bool bUpdateComposeSkeletonPasses(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x10000; } return val; }
	public @property final bool bValidTemporarySavedAnimSets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x20000) != 0; }
	public @property final bool bValidTemporarySavedAnimSets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x20000; } return val; }
	public @property final auto ref ScriptArray!(SkeletalMeshComponent.BonePair) InstanceVertexWeightBones() { return *cast(ScriptArray!(SkeletalMeshComponent.BonePair)*)(cast(size_t)cast(void*)this + 964); }
	public @property final auto ref Vector FrozenLocalToWorldPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref Rotator FrozenLocalToWorldRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref Vector ClothExternalForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref Vector ClothWind() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref Vector ClothBaseVelClampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref float ClothBlendWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref float ClothDynamicBlendWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref float ClothBlendMinDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref float ClothBlendMaxDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref Vector MinPosDampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref Vector MaxPosDampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref Vector MinPosDampScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref Vector MaxPosDampScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref UObject.Pointer ClothSim() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref ScriptArray!(Vector) ClothMeshPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1120); }
	public @property final auto ref ScriptArray!(Vector) ClothMeshNormalData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1132); }
	public @property final auto ref ScriptArray!(int) ClothMeshIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref int NumClothMeshVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
	public @property final auto ref int NumClothMeshIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref ScriptArray!(int) ClothMeshParentData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref int NumClothMeshParentIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref ScriptArray!(Vector) ClothMeshWeldedPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref ScriptArray!(Vector) ClothMeshWeldedNormalData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref ScriptArray!(int) ClothMeshWeldedIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1204); }
	public @property final auto ref int ClothDirtyBufferFlag() { return *cast(int*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel ClothRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer ClothRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref float ClothForceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref float ClothImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref float ClothAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
	public @property final bool bClothUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1240) & 0x1) != 0; }
	public @property final bool bClothUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1240) &= ~0x1; } return val; }
	public @property final auto ref float MinDistanceForClothReset() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref Vector LastClothLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel ApexClothingRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer ApexClothingRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1264); }
	public @property final bool bAutoFreezeApexClothingWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1268) & 0x1) != 0; }
	public @property final bool bAutoFreezeApexClothingWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1268) &= ~0x1; } return val; }
	public @property final auto ref Vector WindVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref float WindVelocityBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1284); }
	public @property final bool bSkipInitClothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1288) & 0x1) != 0; }
	public @property final bool bSkipInitClothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1288) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1288) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer SoftBodySim() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1292); }
	public @property final auto ref int SoftBodySceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1296); }
	public @property final bool bEnableSoftBodySimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x1) != 0; }
	public @property final bool bEnableSoftBodySimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(Vector) SoftBodyTetraPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1304); }
	public @property final auto ref ScriptArray!(int) SoftBodyTetraIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref int NumSoftBodyTetraVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1328); }
	public @property final auto ref int NumSoftBodyTetraIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref float SoftBodyImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
	public @property final bool bSoftBodyFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x1) != 0; }
	public @property final bool bSoftBodyFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x1; } return val; }
	public @property final bool bAutoFreezeSoftBodyWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x2) != 0; }
	public @property final bool bAutoFreezeSoftBodyWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x2; } return val; }
	public @property final bool bSoftBodyAwakeOnStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x4) != 0; }
	public @property final bool bSoftBodyAwakeOnStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x4; } return val; }
	public @property final bool bSoftBodyUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x8) != 0; }
	public @property final bool bSoftBodyUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x8; } return val; }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel SoftBodyRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer SoftBodyRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref UObject.Pointer SoftBodyASVPlane() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref Material LimitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref UObject.BoneAtom RootMotionDelta() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 1360); }
	public @property final auto ref Vector RootMotionVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref Vector RootBoneTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref Vector RootMotionAccelScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1416); }
	public @property final auto ref SkeletalMeshComponent.ERootMotionMode RootMotionMode() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1428); }
	public @property final auto ref SkeletalMeshComponent.ERootMotionMode PreviousRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1429); }
	public @property final auto ref SkeletalMeshComponent.ERootMotionMode PendingRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1430); }
	public @property final auto ref SkeletalMeshComponent.ERootMotionMode OldPendingRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1431); }
	public @property final auto ref int bRMMOneFrameDelay() { return *cast(int*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref SkeletalMeshComponent.ERootMotionRotationMode RootMotionRotationMode() { return *cast(SkeletalMeshComponent.ERootMotionRotationMode*)(cast(size_t)cast(void*)this + 1436); }
	public @property final auto ref SkeletalMeshComponent.EFaceFXBlendMode FaceFXBlendMode() { return *cast(SkeletalMeshComponent.EFaceFXBlendMode*)(cast(size_t)cast(void*)this + 1437); }
	public @property final auto ref UObject.Pointer FaceFXActorInstance() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1440); }
	public @property final auto ref ScriptArray!(ubyte) BoneVisibility() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 1448); }
	public @property final auto ref UObject.BoneAtom LocalToWorldBoneAtom() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref float ProgressiveDrawingFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref ubyte CustomSortAlternateIndexMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1508); }
	final void AttachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Component, ScriptName BoneName, Vector RelativeLocation, Rotator RelativeRotation, Vector RelativeScale)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Component;
		*cast(ScriptName*)&params[4] = BoneName;
		*cast(Vector*)&params[12] = RelativeLocation;
		*cast(Rotator*)&params[24] = RelativeRotation;
		*cast(Vector*)&params[36] = RelativeScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6946], params.ptr, cast(void*)0);
	}
	final void DetachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Component)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Component;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6952], params.ptr, cast(void*)0);
	}
	final void AttachComponentToSocket(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Component, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Component;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6954], params.ptr, cast(void*)0);
	}
	final bool GetSocketWorldLocationAndRotation(ScriptName InSocketName, Vector* OutLocation, Rotator* OutRotation, int Space)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		*cast(Vector*)&params[8] = *OutLocation;
		*cast(Rotator*)&params[20] = *OutRotation;
		*cast(int*)&params[32] = Space;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6957], params.ptr, cast(void*)0);
		*OutLocation = *cast(Vector*)&params[8];
		*OutRotation = *cast(Rotator*)&params[20];
		return *cast(bool*)&params[36];
	}
	final SkeletalMeshSocket GetSocketByName(ScriptName InSocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6963], params.ptr, cast(void*)0);
		return *cast(SkeletalMeshSocket*)&params[8];
	}
	final ScriptName GetSocketBoneName(ScriptName InSocketName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6966], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* FindComponentAttachedToBone(ScriptName InBoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6969], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[8];
	}
	final bool IsComponentAttached(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Component, ScriptName BoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Component;
		*cast(ScriptName*)&params[4] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6972], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AttachedComponents(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void** OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = *OutComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6976], params.ptr, cast(void*)0);
		*OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4];
	}
	final UObject.Matrix GetTransformMatrix()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6979], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	final void SetSkeletalMesh(SkeletalMesh NewMesh, bool bKeepSpaceBases)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewMesh;
		*cast(bool*)&params[4] = bKeepSpaceBases;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6981], params.ptr, cast(void*)0);
	}
	final void SetPhysicsAsset(PhysicsAsset NewPhysicsAsset, bool bForceReInit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PhysicsAsset*)params.ptr = NewPhysicsAsset;
		*cast(bool*)&params[4] = bForceReInit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6984], params.ptr, cast(void*)0);
	}
	final void SetForceRefPose(bool bNewForceRefPose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewForceRefPose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6987], params.ptr, cast(void*)0);
	}
	final void SetEnableClothSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6989], params.ptr, cast(void*)0);
	}
	final void SetClothFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6991], params.ptr, cast(void*)0);
	}
	final void SetEnableClothingSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6993], params.ptr, cast(void*)0);
	}
	final void UpdateClothParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6995], cast(void*)0, cast(void*)0);
	}
	final void SetClothExternalForce(Vector InForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6996], params.ptr, cast(void*)0);
	}
	final void SetAttachClothVertsToBaseBody(bool bAttachVerts)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachVerts;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6998], params.ptr, cast(void*)0);
	}
	final void ResetClothVertsToRefPose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7000], cast(void*)0, cast(void*)0);
	}
	final float GetClothAttachmentResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7001], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothAttachmentTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7003], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothBendingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7005], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothCollisionResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7007], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothDampingCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7009], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final int GetClothFlags()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7011], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final float GetClothFriction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7013], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothPressure()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7015], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothSleepLinearVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7017], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final int GetClothSolverIterations()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7019], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final float GetClothStretchingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7021], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7023], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetClothThickness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7025], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SetClothAttachmentResponseCoefficient(float ClothAttachmentResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachmentResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7027], params.ptr, cast(void*)0);
	}
	final void SetClothAttachmentTearFactor(float ClothAttachTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachTearFactor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7029], params.ptr, cast(void*)0);
	}
	final void SetClothBendingStiffness(float ClothBendingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothBendingStiffness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7031], params.ptr, cast(void*)0);
	}
	final void SetClothCollisionResponseCoefficient(float ClothCollisionResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothCollisionResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7033], params.ptr, cast(void*)0);
	}
	final void SetClothDampingCoefficient(float ClothDampingCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothDampingCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7035], params.ptr, cast(void*)0);
	}
	final void SetClothFlags(int ClothFlags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7037], params.ptr, cast(void*)0);
	}
	final void SetClothFriction(float ClothFriction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothFriction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7039], params.ptr, cast(void*)0);
	}
	final void SetClothPressure(float ClothPressure)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothPressure;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7041], params.ptr, cast(void*)0);
	}
	final void SetClothSleepLinearVelocity(float ClothSleepLinearVelocity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothSleepLinearVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7043], params.ptr, cast(void*)0);
	}
	final void SetClothSolverIterations(int ClothSolverIterations)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothSolverIterations;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7045], params.ptr, cast(void*)0);
	}
	final void SetClothStretchingStiffness(float ClothStretchingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothStretchingStiffness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7047], params.ptr, cast(void*)0);
	}
	final void SetClothTearFactor(float ClothTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothTearFactor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7049], params.ptr, cast(void*)0);
	}
	final void SetClothThickness(float ClothThickness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothThickness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7051], params.ptr, cast(void*)0);
	}
	final void SetClothSleep(bool IfClothSleep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfClothSleep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7053], params.ptr, cast(void*)0);
	}
	final void SetClothPosition(Vector ClothOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothOffSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7055], params.ptr, cast(void*)0);
	}
	final void SetClothVelocity(Vector VelocityOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = VelocityOffSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7057], params.ptr, cast(void*)0);
	}
	final void AttachClothToCollidingShapes(bool AttatchTwoWay, bool AttachTearable)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = AttatchTwoWay;
		*cast(bool*)&params[4] = AttachTearable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7059], params.ptr, cast(void*)0);
	}
	final void EnableClothValidBounds(bool IfEnableClothValidBounds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfEnableClothValidBounds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7062], params.ptr, cast(void*)0);
	}
	final void SetClothValidBounds(Vector ClothValidBoundsMin, Vector ClothValidBoundsMax)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothValidBoundsMin;
		*cast(Vector*)&params[12] = ClothValidBoundsMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7064], params.ptr, cast(void*)0);
	}
	final void UpdateSoftBodyParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7067], cast(void*)0, cast(void*)0);
	}
	final void SetSoftBodyFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7068], params.ptr, cast(void*)0);
	}
	final void WakeSoftBody()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7070], cast(void*)0, cast(void*)0);
	}
	final AnimSequence FindAnimSequence(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7071], params.ptr, cast(void*)0);
		return *cast(AnimSequence*)&params[8];
	}
	final void SaveAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7074], cast(void*)0, cast(void*)0);
	}
	final void RestoreSavedAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7075], cast(void*)0, cast(void*)0);
	}
	final float GetAnimRateByDuration(ScriptName AnimSeqName, float Duration)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = Duration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7076], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float GetAnimLength(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7082], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final MorphTarget FindMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7087], params.ptr, cast(void*)0);
		return *cast(MorphTarget*)&params[8];
	}
	final AnimNode FindAnimNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7090], params.ptr, cast(void*)0);
		return *cast(AnimNode*)&params[8];
	}
	final void AllAnimNodes(ScriptClass BaseClass, AnimNode* Node)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(AnimNode*)&params[4] = *Node;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7093], params.ptr, cast(void*)0);
		*Node = *cast(AnimNode*)&params[4];
	}
	final SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7096], params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	final MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7099], params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	final UObject.Quat GetBoneQuaternion(ScriptName BoneName, int Space)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(int*)&params[8] = Space;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7102], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	final Vector GetBoneLocation(ScriptName BoneName, int Space)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(int*)&params[8] = Space;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7106], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final int MatchRefBone(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7110], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptName GetBoneName(int BoneIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7113], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final UObject.Matrix GetBoneMatrix(int BoneIndex)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7116], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	final ScriptName GetParentBone(ScriptName BoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7119], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final void GetBoneNames(ScriptArray!(ScriptName)* BoneNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *BoneNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7122], params.ptr, cast(void*)0);
		*BoneNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	final bool BoneIsChildOf(ScriptName BoneName, ScriptName ParentBoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(ScriptName*)&params[8] = ParentBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7125], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final Vector GetRefPosePosition(int BoneIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7129], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Vector GetBoneAxis(ScriptName BoneName, UObject.EAxis Axis)
	{
		ubyte params[21];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(UObject.EAxis*)&params[8] = Axis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7132], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final void TransformToBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, Vector* OutPosition, Rotator* OutRotation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(Vector*)&params[8] = InPosition;
		*cast(Rotator*)&params[20] = InRotation;
		*cast(Vector*)&params[32] = *OutPosition;
		*cast(Rotator*)&params[44] = *OutRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7136], params.ptr, cast(void*)0);
		*OutPosition = *cast(Vector*)&params[32];
		*OutRotation = *cast(Rotator*)&params[44];
	}
	final void TransformFromBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, Vector* OutPosition, Rotator* OutRotation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(Vector*)&params[8] = InPosition;
		*cast(Rotator*)&params[20] = InRotation;
		*cast(Vector*)&params[32] = *OutPosition;
		*cast(Rotator*)&params[44] = *OutRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7142], params.ptr, cast(void*)0);
		*OutPosition = *cast(Vector*)&params[32];
		*OutRotation = *cast(Rotator*)&params[44];
	}
	final ScriptName FindClosestBone(Vector TestLocation, Vector* BoneLocation, float IgnoreScale)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		*cast(Vector*)&params[12] = *BoneLocation;
		*cast(float*)&params[24] = IgnoreScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7148], params.ptr, cast(void*)0);
		*BoneLocation = *cast(Vector*)&params[12];
		return *cast(ScriptName*)&params[28];
	}
	final Vector GetClosestCollidingBoneLocation(Vector TestLocation, bool bCheckZeroExtent, bool bCheckNonZeroExtent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		*cast(bool*)&params[12] = bCheckZeroExtent;
		*cast(bool*)&params[16] = bCheckNonZeroExtent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7153], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	final void SetAnimTreeTemplate(AnimTree NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimTree*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7158], params.ptr, cast(void*)0);
	}
	final void SetParentAnimComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* NewParentAnimComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = NewParentAnimComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7160], params.ptr, cast(void*)0);
	}
	final void UpdateParentBoneMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7162], cast(void*)0, cast(void*)0);
	}
	final void InitSkelControls()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7163], cast(void*)0, cast(void*)0);
	}
	final void InitMorphTargets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7164], cast(void*)0, cast(void*)0);
	}
	final int FindConstraintIndex(ScriptName ConstraintName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ConstraintName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7165], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptName FindConstraintBoneName(int ConstraintIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ConstraintIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7168], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final RB_BodyInstance FindBodyInstanceNamed(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7171], params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)&params[8];
	}
	final void SetHasPhysicsAssetInstance(bool bHasInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHasInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7174], params.ptr, cast(void*)0);
	}
	final void UpdateRBBonesFromSpaceBases(bool bMoveUnfixedBodies, bool bTeleport)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveUnfixedBodies;
		*cast(bool*)&params[4] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7176], params.ptr, cast(void*)0);
	}
	final void ForceSkelUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7179], cast(void*)0, cast(void*)0);
	}
	final void UpdateAnimations()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7180], cast(void*)0, cast(void*)0);
	}
	final bool GetBonesWithinRadius(Vector Origin, float Radius, int TraceFlags, ScriptArray!(ScriptName)* out_Bones)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(int*)&params[16] = TraceFlags;
		*cast(ScriptArray!(ScriptName)*)&params[20] = *out_Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7181], params.ptr, cast(void*)0);
		*out_Bones = *cast(ScriptArray!(ScriptName)*)&params[20];
		return *cast(bool*)&params[32];
	}
	final void AddInstanceVertexWeightBoneParented(ScriptName BoneName, bool bPairWithParent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(bool*)&params[8] = bPairWithParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7188], params.ptr, cast(void*)0);
	}
	final void RemoveInstanceVertexWeightBoneParented(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7191], params.ptr, cast(void*)0);
	}
	final int FindInstanceVertexweightBonePair(SkeletalMeshComponent.BonePair Bones)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SkeletalMeshComponent.BonePair*)params.ptr = Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7193], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final void UpdateInstanceVertexWeightBones(ScriptArray!(SkeletalMeshComponent.BonePair) BonePairs)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SkeletalMeshComponent.BonePair)*)params.ptr = BonePairs;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7199], params.ptr, cast(void*)0);
	}
	final void ToggleInstanceVertexWeights(bool bEnable, int LODIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		*cast(int*)&params[4] = LODIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7202], params.ptr, cast(void*)0);
	}
	final bool PlayFaceFXAnim(FaceFXAnimSet FaceFXAnimSetRef, ScriptString AnimName, ScriptString GroupName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = FaceFXAnimSetRef;
		*cast(ScriptString*)&params[4] = AnimName;
		*cast(ScriptString*)&params[16] = GroupName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7205], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final void StopFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7211], cast(void*)0, cast(void*)0);
	}
	final bool IsPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7212], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void DeclareFaceFXRegister(ScriptString RegName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7214], params.ptr, cast(void*)0);
	}
	final float GetFaceFXRegister(ScriptString RegName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7216], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final void SetFaceFXRegister(ScriptString RegName, float RegVal, SkeletalMeshComponent.EFaceFXRegOp RegOp, float InterpDuration)
	{
		ubyte params[21];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(float*)&params[12] = RegVal;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[16] = RegOp;
		*cast(float*)&params[20] = InterpDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7219], params.ptr, cast(void*)0);
	}
	final void SetFaceFXRegisterEx(ScriptString RegName, SkeletalMeshComponent.EFaceFXRegOp RegOp, float FirstValue, float FirstInterpDuration, float NextValue, float NextInterpDuration)
	{
		ubyte params[29];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[12] = RegOp;
		*cast(float*)&params[16] = FirstValue;
		*cast(float*)&params[20] = FirstInterpDuration;
		*cast(float*)&params[24] = NextValue;
		*cast(float*)&params[28] = NextInterpDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7224], params.ptr, cast(void*)0);
	}
	final void HideBone(int BoneIndex, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[4] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7231], params.ptr, cast(void*)0);
	}
	final void UnHideBone(int BoneIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7234], params.ptr, cast(void*)0);
	}
	final bool IsBoneHidden(int BoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7236], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void HideBoneByName(ScriptName BoneName, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[8] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7239], params.ptr, cast(void*)0);
	}
	final void UnHideBoneByName(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7242], params.ptr, cast(void*)0);
	}
	final void UpdateMeshForBrokenConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7244], cast(void*)0, cast(void*)0);
	}
	final void ShowMaterialSection(int MaterialID, bool bShow, int LODIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = MaterialID;
		*cast(bool*)&params[4] = bShow;
		*cast(int*)&params[8] = LODIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7245], params.ptr, cast(void*)0);
	}
	final void PlayAnim(ScriptName AnimName, float Duration, bool bLoop, bool bRestartIfAlreadyPlaying, float StartTime, bool bPlayBackwards)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Duration;
		*cast(bool*)&params[12] = bLoop;
		*cast(bool*)&params[16] = bRestartIfAlreadyPlaying;
		*cast(float*)&params[20] = StartTime;
		*cast(bool*)&params[24] = bPlayBackwards;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7249], params.ptr, cast(void*)0);
	}
	final void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7267], cast(void*)0, cast(void*)0);
	}
	final bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7276], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SkelMeshCompOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7302], params.ptr, cast(void*)0);
	}
	final void BreakConstraint(Vector Impulse, Vector HitLocation, ScriptName InBoneName, bool bVelChange)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptName*)&params[24] = InBoneName;
		*cast(bool*)&params[32] = bVelChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7304], params.ptr, cast(void*)0);
	}
}
