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
public extern(D):
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
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref ScriptName Bones() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
	}
	struct SkelMeshComponentLODInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final
		{
			auto ref
			{
				SkeletalMeshComponent.EInstanceWeightUsage InstanceWeightUsage() { return *cast(SkeletalMeshComponent.EInstanceWeightUsage*)(cast(size_t)&this + 16); }
				ScriptArray!(bool) HiddenMaterials() { return *cast(ScriptArray!(bool)*)(cast(size_t)&this + 0); }
				int InstanceWeightIdx() { return *cast(int*)(cast(size_t)&this + 20); }
			}
			bool bNeedsInstanceWeightUpdate() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bNeedsInstanceWeightUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
			bool bAlwaysUseInstanceWeights() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bAlwaysUseInstanceWeights(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		}
	}
	struct Attachment
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final auto ref
		{
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)&this + 24); }
			Vector RelativeScale() { return *cast(Vector*)(cast(size_t)&this + 36); }
		}
	}
	struct ActiveMorph
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			MorphTarget Target() { return *cast(MorphTarget*)(cast(size_t)&this + 0); }
			float Weight() { return *cast(float*)(cast(size_t)&this + 4); }
		}
	}
	@property final
	{
		auto ref
		{
			AnimNode Animations() { return *cast(AnimNode*)(cast(size_t)cast(void*)this + 512); }
			// WARNING: Property 'PhysicsAssetInstance' has the same name as a defined type!
			ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo) LODInfo() { return *cast(ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo)*)(cast(size_t)cast(void*)this + 976); }
			// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
			// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
			AnimTree AnimTreeTemplate() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 508); }
			ScriptArray!(AnimNode) AnimTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 516); }
			ScriptArray!(AnimNode) AnimAlwaysTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 528); }
			ScriptArray!(int) AnimTickRelevancyArray() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 540); }
			ScriptArray!(float) AnimTickWeightsArray() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 552); }
			ScriptArray!(SkelControlBase) SkelControlTickArray() { return *cast(ScriptArray!(SkelControlBase)*)(cast(size_t)cast(void*)this + 564); }
			UObject.Pointer ApexClothing() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 584); }
			float PhysicsWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float GlobalAnimRateScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			UObject.Pointer MeshObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 596); }
			UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 600); }
			ScriptArray!(UObject.BoneAtom) SpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 604); }
			ScriptArray!(UObject.BoneAtom) LocalAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 616); }
			ScriptArray!(UObject.BoneAtom) CachedLocalAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 628); }
			ScriptArray!(UObject.BoneAtom) CachedSpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 640); }
			int LowUpdateFrameRate() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
			ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 656); }
			ScriptArray!(ubyte) ComposeOrderedRequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 668); }
			ScriptArray!(int) ParentBoneMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 688); }
			ScriptArray!(AnimSet) AnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 700); }
			ScriptArray!(AnimSet) TemporarySavedAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 712); }
			ScriptArray!(MorphTargetSet) MorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 724); }
			ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveMorphs() { return *cast(ScriptArray!(SkeletalMeshComponent.ActiveMorph)*)(cast(size_t)cast(void*)this + 736); }
			ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveCurveMorphs() { return *cast(ScriptArray!(SkeletalMeshComponent.ActiveMorph)*)(cast(size_t)cast(void*)this + 748); }
			ScriptArray!(SkeletalMeshComponent.Attachment) Attachments() { return *cast(ScriptArray!(SkeletalMeshComponent.Attachment)*)(cast(size_t)cast(void*)this + 820); }
			ScriptArray!(ubyte) SkelControlIndex() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 832); }
			ScriptArray!(ubyte) PostPhysSkelControlIndex() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 844); }
			int ForcedLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 856); }
			int MinLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
			int PredictedLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 864); }
			int OldPredictedLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 868); }
			float MaxDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
			int bForceWireframe() { return *cast(int*)(cast(size_t)cast(void*)this + 876); }
			int bForceRefpose() { return *cast(int*)(cast(size_t)cast(void*)this + 880); }
			int bOldForceRefPose() { return *cast(int*)(cast(size_t)cast(void*)this + 884); }
			int bDisplayBones() { return *cast(int*)(cast(size_t)cast(void*)this + 892); }
			int bShowPrePhysBones() { return *cast(int*)(cast(size_t)cast(void*)this + 896); }
			int bHideSkin() { return *cast(int*)(cast(size_t)cast(void*)this + 900); }
			int bForceRawOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 904); }
			int bIgnoreControllers() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
			int bTransformFromAnimParent() { return *cast(int*)(cast(size_t)cast(void*)this + 912); }
			int TickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 916); }
			int InitTag() { return *cast(int*)(cast(size_t)cast(void*)this + 920); }
			int CachedAtomsTag() { return *cast(int*)(cast(size_t)cast(void*)this + 924); }
			int bUseSingleBodyPhysics() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
			int bRequiredBonesUpToDate() { return *cast(int*)(cast(size_t)cast(void*)this + 932); }
			float MinDistFactorForKinematicUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
			int FramesPhysicsAsleep() { return *cast(int*)(cast(size_t)cast(void*)this + 940); }
			Vector LineCheckBoundsScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 948); }
			ScriptArray!(SkeletalMeshComponent.BonePair) InstanceVertexWeightBones() { return *cast(ScriptArray!(SkeletalMeshComponent.BonePair)*)(cast(size_t)cast(void*)this + 964); }
			Vector FrozenLocalToWorldPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 988); }
			Rotator FrozenLocalToWorldRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1000); }
			Vector ClothExternalForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1012); }
			Vector ClothWind() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1024); }
			Vector ClothBaseVelClampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1036); }
			float ClothBlendWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			float ClothDynamicBlendWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
			float ClothBlendMinDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
			float ClothBlendMaxDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1060); }
			Vector MinPosDampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1064); }
			Vector MaxPosDampRange() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1076); }
			Vector MinPosDampScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1088); }
			Vector MaxPosDampScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1100); }
			UObject.Pointer ClothSim() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1112); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1116); }
			ScriptArray!(Vector) ClothMeshPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1120); }
			ScriptArray!(Vector) ClothMeshNormalData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1132); }
			ScriptArray!(int) ClothMeshIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1144); }
			int NumClothMeshVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
			int NumClothMeshIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			ScriptArray!(int) ClothMeshParentData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1164); }
			int NumClothMeshParentIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1176); }
			ScriptArray!(Vector) ClothMeshWeldedPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1180); }
			ScriptArray!(Vector) ClothMeshWeldedNormalData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1192); }
			ScriptArray!(int) ClothMeshWeldedIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1204); }
			int ClothDirtyBufferFlag() { return *cast(int*)(cast(size_t)cast(void*)this + 1216); }
			PrimitiveComponent.ERBCollisionChannel ClothRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1220); }
			PrimitiveComponent.RBCollisionChannelContainer ClothRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1224); }
			float ClothForceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			float ClothImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
			float ClothAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
			float MinDistanceForClothReset() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
			Vector LastClothLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1248); }
			PrimitiveComponent.ERBCollisionChannel ApexClothingRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1260); }
			PrimitiveComponent.RBCollisionChannelContainer ApexClothingRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1264); }
			Vector WindVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1272); }
			float WindVelocityBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1284); }
			UObject.Pointer SoftBodySim() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1292); }
			int SoftBodySceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1296); }
			ScriptArray!(Vector) SoftBodyTetraPosData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1304); }
			ScriptArray!(int) SoftBodyTetraIndexData() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1316); }
			int NumSoftBodyTetraVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1328); }
			int NumSoftBodyTetraIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 1332); }
			float SoftBodyImpulseScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			PrimitiveComponent.ERBCollisionChannel SoftBodyRBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 1344); }
			PrimitiveComponent.RBCollisionChannelContainer SoftBodyRBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 1348); }
			UObject.Pointer SoftBodyASVPlane() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1352); }
			Material LimitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1356); }
			UObject.BoneAtom RootMotionDelta() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 1360); }
			Vector RootMotionVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
			Vector RootBoneTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1404); }
			Vector RootMotionAccelScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1416); }
			SkeletalMeshComponent.ERootMotionMode RootMotionMode() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1428); }
			SkeletalMeshComponent.ERootMotionMode PreviousRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1429); }
			SkeletalMeshComponent.ERootMotionMode PendingRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1430); }
			SkeletalMeshComponent.ERootMotionMode OldPendingRMM() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 1431); }
			int bRMMOneFrameDelay() { return *cast(int*)(cast(size_t)cast(void*)this + 1432); }
			SkeletalMeshComponent.ERootMotionRotationMode RootMotionRotationMode() { return *cast(SkeletalMeshComponent.ERootMotionRotationMode*)(cast(size_t)cast(void*)this + 1436); }
			SkeletalMeshComponent.EFaceFXBlendMode FaceFXBlendMode() { return *cast(SkeletalMeshComponent.EFaceFXBlendMode*)(cast(size_t)cast(void*)this + 1437); }
			UObject.Pointer FaceFXActorInstance() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1440); }
			ScriptArray!(ubyte) BoneVisibility() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 1448); }
			UObject.BoneAtom LocalToWorldBoneAtom() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 1472); }
			float ProgressiveDrawingFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 1504); }
			ubyte CustomSortAlternateIndexMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1508); }
		}
		bool bShouldIgnoreParentAnimComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x1) != 0; }
		bool bShouldIgnoreParentAnimComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x1; } return val; }
		bool bNoSkeletonUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 888) & 0x1) != 0; }
		bool bNoSkeletonUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 888) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 888) &= ~0x1; } return val; }
		bool bSkipAllUpdateWhenPhysicsAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1) != 0; }
		bool bSkipAllUpdateWhenPhysicsAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1; } return val; }
		bool bConsiderAllBodiesForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2) != 0; }
		bool bConsiderAllBodiesForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2; } return val; }
		bool bUpdateSkelWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4) != 0; }
		bool bUpdateSkelWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4; } return val; }
		bool bIgnoreControllersWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8) != 0; }
		bool bIgnoreControllersWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8; } return val; }
		bool bTickAnimNodesWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10) != 0; }
		bool bTickAnimNodesWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10; } return val; }
		bool bNotUpdatingKinematicDueToDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20) != 0; }
		bool bNotUpdatingKinematicDueToDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20; } return val; }
		bool bForceDiscardRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x40) != 0; }
		bool bForceDiscardRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x40; } return val; }
		bool bRootMotionModeChangeNotify() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x80) != 0; }
		bool bRootMotionModeChangeNotify(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x80; } return val; }
		bool bRootMotionExtractedNotify() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x100) != 0; }
		bool bRootMotionExtractedNotify(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x100; } return val; }
		bool bDisableFaceFXMaterialInstanceCreation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x200) != 0; }
		bool bDisableFaceFXMaterialInstanceCreation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x200; } return val; }
		bool bAnimTreeInitialised() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x400) != 0; }
		bool bAnimTreeInitialised(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x400; } return val; }
		bool bForceMeshObjectUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x800) != 0; }
		bool bForceMeshObjectUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x800; } return val; }
		bool bHasPhysicsAssetInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1000) != 0; }
		bool bHasPhysicsAssetInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1000; } return val; }
		bool bUpdateKinematicBonesFromAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2000) != 0; }
		bool bUpdateKinematicBonesFromAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2000; } return val; }
		bool bUpdateJointsFromAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4000) != 0; }
		bool bUpdateJointsFromAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4000; } return val; }
		bool bSkelCompFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8000) != 0; }
		bool bSkelCompFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8000; } return val; }
		bool bHasHadPhysicsBlendedIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10000) != 0; }
		bool bHasHadPhysicsBlendedIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10000; } return val; }
		bool bForceUpdateAttachmentsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20000) != 0; }
		bool bForceUpdateAttachmentsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20000; } return val; }
		bool bEnableFullAnimWeightBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x40000) != 0; }
		bool bEnableFullAnimWeightBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x40000; } return val; }
		bool bPerBoneVolumeEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x80000) != 0; }
		bool bPerBoneVolumeEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x80000; } return val; }
		bool bPerBoneMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x100000) != 0; }
		bool bPerBoneMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x100000; } return val; }
		bool bSyncActorLocationToRootRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x200000) != 0; }
		bool bSyncActorLocationToRootRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x200000; } return val; }
		bool bUseRawData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x400000) != 0; }
		bool bUseRawData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x400000; } return val; }
		bool bDisableWarningWhenAnimNotFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x800000) != 0; }
		bool bDisableWarningWhenAnimNotFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x800000; } return val; }
		bool bOverrideAttachmentOwnerVisibility() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x1000000) != 0; }
		bool bOverrideAttachmentOwnerVisibility(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x1000000; } return val; }
		bool bNeedsToDeleteHitMask() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x2000000) != 0; }
		bool bNeedsToDeleteHitMask(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x2000000; } return val; }
		bool bPauseAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x4000000) != 0; }
		bool bPauseAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x4000000; } return val; }
		bool bChartDistanceFactor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x8000000) != 0; }
		bool bChartDistanceFactor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x8000000; } return val; }
		bool bEnableLineCheckWithBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x10000000) != 0; }
		bool bEnableLineCheckWithBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x10000000; } return val; }
		bool bCanHighlightSelectedSections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 944) & 0x20000000) != 0; }
		bool bCanHighlightSelectedSections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 944) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 944) &= ~0x20000000; } return val; }
		bool bEnableClothSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x1) != 0; }
		bool bEnableClothSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x1; } return val; }
		bool bDisableClothCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x2) != 0; }
		bool bDisableClothCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x2; } return val; }
		bool bClothFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x4) != 0; }
		bool bClothFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x4; } return val; }
		bool bAutoFreezeClothWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x8) != 0; }
		bool bAutoFreezeClothWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x8; } return val; }
		bool bClothAwakeOnStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x10) != 0; }
		bool bClothAwakeOnStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x10; } return val; }
		bool bClothBaseVelClamp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x20) != 0; }
		bool bClothBaseVelClamp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x20; } return val; }
		bool bClothBaseVelInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x40) != 0; }
		bool bClothBaseVelInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x40; } return val; }
		bool bAttachClothVertsToBaseBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x80) != 0; }
		bool bAttachClothVertsToBaseBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x80; } return val; }
		bool bIsClothOnStaticObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x100) != 0; }
		bool bIsClothOnStaticObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x100; } return val; }
		bool bUpdatedFixedClothVerts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x200) != 0; }
		bool bUpdatedFixedClothVerts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x200; } return val; }
		bool bClothPositionalDampening() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x400) != 0; }
		bool bClothPositionalDampening(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x400; } return val; }
		bool bClothWindRelativeToOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x800) != 0; }
		bool bClothWindRelativeToOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x800; } return val; }
		bool bRecentlyRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x1000) != 0; }
		bool bRecentlyRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x1000; } return val; }
		bool bCacheAnimSequenceNodes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x2000) != 0; }
		bool bCacheAnimSequenceNodes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x2000; } return val; }
		bool bNeedsInstanceWeightUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x4000) != 0; }
		bool bNeedsInstanceWeightUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x4000; } return val; }
		bool bAlwaysUseInstanceWeights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x8000) != 0; }
		bool bAlwaysUseInstanceWeights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x8000; } return val; }
		bool bUpdateComposeSkeletonPasses() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x10000) != 0; }
		bool bUpdateComposeSkeletonPasses(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x10000; } return val; }
		bool bValidTemporarySavedAnimSets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 960) & 0x20000) != 0; }
		bool bValidTemporarySavedAnimSets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 960) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 960) &= ~0x20000; } return val; }
		bool bClothUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1240) & 0x1) != 0; }
		bool bClothUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1240) &= ~0x1; } return val; }
		bool bAutoFreezeApexClothingWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1268) & 0x1) != 0; }
		bool bAutoFreezeApexClothingWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1268) &= ~0x1; } return val; }
		bool bSkipInitClothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1288) & 0x1) != 0; }
		bool bSkipInitClothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1288) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1288) &= ~0x1; } return val; }
		bool bEnableSoftBodySimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x1) != 0; }
		bool bEnableSoftBodySimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x1; } return val; }
		bool bSoftBodyFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x1) != 0; }
		bool bSoftBodyFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x1; } return val; }
		bool bAutoFreezeSoftBodyWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x2) != 0; }
		bool bAutoFreezeSoftBodyWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x2; } return val; }
		bool bSoftBodyAwakeOnStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x4) != 0; }
		bool bSoftBodyAwakeOnStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x4; } return val; }
		bool bSoftBodyUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1340) & 0x8) != 0; }
		bool bSoftBodyUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1340) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1340) &= ~0x8; } return val; }
	}
final:
	void AttachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName BoneName, Vector RelativeLocation, Rotator RelativeRotation, Vector RelativeScale)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = BoneName;
		*cast(Vector*)&params[12] = RelativeLocation;
		*cast(Rotator*)&params[24] = RelativeRotation;
		*cast(Vector*)&params[36] = RelativeScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6946], params.ptr, cast(void*)0);
	}
	void DetachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6952], params.ptr, cast(void*)0);
	}
	void AttachComponentToSocket(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6954], params.ptr, cast(void*)0);
	}
	bool GetSocketWorldLocationAndRotation(ScriptName InSocketName, Vector* OutLocation, Rotator* OutRotation, int Space)
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
	SkeletalMeshSocket GetSocketByName(ScriptName InSocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6963], params.ptr, cast(void*)0);
		return *cast(SkeletalMeshSocket*)&params[8];
	}
	ScriptName GetSocketBoneName(ScriptName InSocketName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6966], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FindComponentAttachedToBone(ScriptName InBoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6969], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8];
	}
	bool IsComponentAttached(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName BoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6972], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AttachedComponents(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = *OutComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6976], params.ptr, cast(void*)0);
		*OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	UObject.Matrix GetTransformMatrix()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6979], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	void SetSkeletalMesh(SkeletalMesh NewMesh, bool bKeepSpaceBases)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewMesh;
		*cast(bool*)&params[4] = bKeepSpaceBases;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6981], params.ptr, cast(void*)0);
	}
	void SetPhysicsAsset(PhysicsAsset NewPhysicsAsset, bool bForceReInit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PhysicsAsset*)params.ptr = NewPhysicsAsset;
		*cast(bool*)&params[4] = bForceReInit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6984], params.ptr, cast(void*)0);
	}
	void SetForceRefPose(bool bNewForceRefPose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewForceRefPose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6987], params.ptr, cast(void*)0);
	}
	void SetEnableClothSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6989], params.ptr, cast(void*)0);
	}
	void SetClothFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6991], params.ptr, cast(void*)0);
	}
	void SetEnableClothingSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6993], params.ptr, cast(void*)0);
	}
	void UpdateClothParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6995], cast(void*)0, cast(void*)0);
	}
	void SetClothExternalForce(Vector InForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6996], params.ptr, cast(void*)0);
	}
	void SetAttachClothVertsToBaseBody(bool bAttachVerts)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachVerts;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6998], params.ptr, cast(void*)0);
	}
	void ResetClothVertsToRefPose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7000], cast(void*)0, cast(void*)0);
	}
	float GetClothAttachmentResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7001], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothAttachmentTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7003], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothBendingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7005], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothCollisionResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7007], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothDampingCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7009], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetClothFlags()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7011], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetClothFriction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7013], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothPressure()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7015], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothSleepLinearVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7017], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetClothSolverIterations()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7019], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetClothStretchingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7021], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7023], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothThickness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7025], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetClothAttachmentResponseCoefficient(float ClothAttachmentResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachmentResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7027], params.ptr, cast(void*)0);
	}
	void SetClothAttachmentTearFactor(float ClothAttachTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachTearFactor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7029], params.ptr, cast(void*)0);
	}
	void SetClothBendingStiffness(float ClothBendingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothBendingStiffness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7031], params.ptr, cast(void*)0);
	}
	void SetClothCollisionResponseCoefficient(float ClothCollisionResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothCollisionResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7033], params.ptr, cast(void*)0);
	}
	void SetClothDampingCoefficient(float ClothDampingCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothDampingCoefficient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7035], params.ptr, cast(void*)0);
	}
	void SetClothFlags(int ClothFlags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7037], params.ptr, cast(void*)0);
	}
	void SetClothFriction(float ClothFriction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothFriction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7039], params.ptr, cast(void*)0);
	}
	void SetClothPressure(float ClothPressure)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothPressure;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7041], params.ptr, cast(void*)0);
	}
	void SetClothSleepLinearVelocity(float ClothSleepLinearVelocity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothSleepLinearVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7043], params.ptr, cast(void*)0);
	}
	void SetClothSolverIterations(int ClothSolverIterations)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothSolverIterations;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7045], params.ptr, cast(void*)0);
	}
	void SetClothStretchingStiffness(float ClothStretchingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothStretchingStiffness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7047], params.ptr, cast(void*)0);
	}
	void SetClothTearFactor(float ClothTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothTearFactor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7049], params.ptr, cast(void*)0);
	}
	void SetClothThickness(float ClothThickness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothThickness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7051], params.ptr, cast(void*)0);
	}
	void SetClothSleep(bool IfClothSleep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfClothSleep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7053], params.ptr, cast(void*)0);
	}
	void SetClothPosition(Vector ClothOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothOffSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7055], params.ptr, cast(void*)0);
	}
	void SetClothVelocity(Vector VelocityOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = VelocityOffSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7057], params.ptr, cast(void*)0);
	}
	void AttachClothToCollidingShapes(bool AttatchTwoWay, bool AttachTearable)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = AttatchTwoWay;
		*cast(bool*)&params[4] = AttachTearable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7059], params.ptr, cast(void*)0);
	}
	void EnableClothValidBounds(bool IfEnableClothValidBounds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfEnableClothValidBounds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7062], params.ptr, cast(void*)0);
	}
	void SetClothValidBounds(Vector ClothValidBoundsMin, Vector ClothValidBoundsMax)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothValidBoundsMin;
		*cast(Vector*)&params[12] = ClothValidBoundsMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7064], params.ptr, cast(void*)0);
	}
	void UpdateSoftBodyParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7067], cast(void*)0, cast(void*)0);
	}
	void SetSoftBodyFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7068], params.ptr, cast(void*)0);
	}
	void WakeSoftBody()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7070], cast(void*)0, cast(void*)0);
	}
	AnimSequence FindAnimSequence(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7071], params.ptr, cast(void*)0);
		return *cast(AnimSequence*)&params[8];
	}
	void SaveAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7074], cast(void*)0, cast(void*)0);
	}
	void RestoreSavedAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7075], cast(void*)0, cast(void*)0);
	}
	float GetAnimRateByDuration(ScriptName AnimSeqName, float Duration)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = Duration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7076], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetAnimLength(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7082], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	MorphTarget FindMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7087], params.ptr, cast(void*)0);
		return *cast(MorphTarget*)&params[8];
	}
	AnimNode FindAnimNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7090], params.ptr, cast(void*)0);
		return *cast(AnimNode*)&params[8];
	}
	void AllAnimNodes(ScriptClass BaseClass, AnimNode* Node)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(AnimNode*)&params[4] = *Node;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7093], params.ptr, cast(void*)0);
		*Node = *cast(AnimNode*)&params[4];
	}
	SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7096], params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7099], params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	UObject.Quat GetBoneQuaternion(ScriptName BoneName, int Space)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(int*)&params[8] = Space;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7102], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	Vector GetBoneLocation(ScriptName BoneName, int Space)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(int*)&params[8] = Space;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7106], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	int MatchRefBone(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7110], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptName GetBoneName(int BoneIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7113], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	UObject.Matrix GetBoneMatrix(int BoneIndex)
	{
		ubyte params[80];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7116], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	ScriptName GetParentBone(ScriptName BoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7119], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	void GetBoneNames(ScriptArray!(ScriptName)* BoneNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *BoneNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7122], params.ptr, cast(void*)0);
		*BoneNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	bool BoneIsChildOf(ScriptName BoneName, ScriptName ParentBoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(ScriptName*)&params[8] = ParentBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7125], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	Vector GetRefPosePosition(int BoneIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7129], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetBoneAxis(ScriptName BoneName, UObject.EAxis Axis)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(UObject.EAxis*)&params[8] = Axis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7132], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void TransformToBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, Vector* OutPosition, Rotator* OutRotation)
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
	void TransformFromBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, Vector* OutPosition, Rotator* OutRotation)
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
	ScriptName FindClosestBone(Vector TestLocation, Vector* BoneLocation, float IgnoreScale)
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
	Vector GetClosestCollidingBoneLocation(Vector TestLocation, bool bCheckZeroExtent, bool bCheckNonZeroExtent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		*cast(bool*)&params[12] = bCheckZeroExtent;
		*cast(bool*)&params[16] = bCheckNonZeroExtent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7153], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	void SetAnimTreeTemplate(AnimTree NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimTree*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7158], params.ptr, cast(void*)0);
	}
	void SetParentAnimComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewParentAnimComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewParentAnimComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7160], params.ptr, cast(void*)0);
	}
	void UpdateParentBoneMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7162], cast(void*)0, cast(void*)0);
	}
	void InitSkelControls()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7163], cast(void*)0, cast(void*)0);
	}
	void InitMorphTargets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7164], cast(void*)0, cast(void*)0);
	}
	int FindConstraintIndex(ScriptName ConstraintName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ConstraintName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7165], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptName FindConstraintBoneName(int ConstraintIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ConstraintIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7168], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	RB_BodyInstance FindBodyInstanceNamed(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7171], params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)&params[8];
	}
	void SetHasPhysicsAssetInstance(bool bHasInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHasInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7174], params.ptr, cast(void*)0);
	}
	void UpdateRBBonesFromSpaceBases(bool bMoveUnfixedBodies, bool bTeleport)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveUnfixedBodies;
		*cast(bool*)&params[4] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7176], params.ptr, cast(void*)0);
	}
	void ForceSkelUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7179], cast(void*)0, cast(void*)0);
	}
	void UpdateAnimations()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7180], cast(void*)0, cast(void*)0);
	}
	bool GetBonesWithinRadius(Vector Origin, float Radius, int TraceFlags, ScriptArray!(ScriptName)* out_Bones)
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
	void AddInstanceVertexWeightBoneParented(ScriptName BoneName, bool bPairWithParent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(bool*)&params[8] = bPairWithParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7188], params.ptr, cast(void*)0);
	}
	void RemoveInstanceVertexWeightBoneParented(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7191], params.ptr, cast(void*)0);
	}
	int FindInstanceVertexweightBonePair(SkeletalMeshComponent.BonePair Bones)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SkeletalMeshComponent.BonePair*)params.ptr = Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7193], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	void UpdateInstanceVertexWeightBones(ScriptArray!(SkeletalMeshComponent.BonePair) BonePairs)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SkeletalMeshComponent.BonePair)*)params.ptr = BonePairs;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7199], params.ptr, cast(void*)0);
	}
	void ToggleInstanceVertexWeights(bool bEnable, int LODIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		*cast(int*)&params[4] = LODIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7202], params.ptr, cast(void*)0);
	}
	bool PlayFaceFXAnim(FaceFXAnimSet FaceFXAnimSetRef, ScriptString AnimName, ScriptString GroupName, SoundCue SoundCueToPlay)
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
	void StopFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7211], cast(void*)0, cast(void*)0);
	}
	bool IsPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7212], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DeclareFaceFXRegister(ScriptString RegName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7214], params.ptr, cast(void*)0);
	}
	float GetFaceFXRegister(ScriptString RegName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7216], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void SetFaceFXRegister(ScriptString RegName, float RegVal, SkeletalMeshComponent.EFaceFXRegOp RegOp, float InterpDuration)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(float*)&params[12] = RegVal;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[16] = RegOp;
		*cast(float*)&params[20] = InterpDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7219], params.ptr, cast(void*)0);
	}
	void SetFaceFXRegisterEx(ScriptString RegName, SkeletalMeshComponent.EFaceFXRegOp RegOp, float FirstValue, float FirstInterpDuration, float NextValue, float NextInterpDuration)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[12] = RegOp;
		*cast(float*)&params[16] = FirstValue;
		*cast(float*)&params[20] = FirstInterpDuration;
		*cast(float*)&params[24] = NextValue;
		*cast(float*)&params[28] = NextInterpDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7224], params.ptr, cast(void*)0);
	}
	void HideBone(int BoneIndex, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[4] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7231], params.ptr, cast(void*)0);
	}
	void UnHideBone(int BoneIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7234], params.ptr, cast(void*)0);
	}
	bool IsBoneHidden(int BoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7236], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HideBoneByName(ScriptName BoneName, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[8] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7239], params.ptr, cast(void*)0);
	}
	void UnHideBoneByName(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7242], params.ptr, cast(void*)0);
	}
	void UpdateMeshForBrokenConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7244], cast(void*)0, cast(void*)0);
	}
	void ShowMaterialSection(int MaterialID, bool bShow, int LODIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = MaterialID;
		*cast(bool*)&params[4] = bShow;
		*cast(int*)&params[8] = LODIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7245], params.ptr, cast(void*)0);
	}
	void PlayAnim(ScriptName AnimName, float Duration, bool bLoop, bool bRestartIfAlreadyPlaying, float StartTime, bool bPlayBackwards)
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
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7267], cast(void*)0, cast(void*)0);
	}
	bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7276], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SkelMeshCompOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7302], params.ptr, cast(void*)0);
	}
	void BreakConstraint(Vector Impulse, Vector HitLocation, ScriptName InBoneName, bool bVelChange)
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
