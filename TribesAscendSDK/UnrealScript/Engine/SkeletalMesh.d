module UnrealScript.Engine.SkeletalMesh;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.SkeletalMeshSocket;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ApexClothingAsset;

extern(C++) interface SkeletalMesh : UObject
{
	enum SoftBodyBoneType : ubyte
	{
		SOFTBODYBONE_Fixed = 0,
		SOFTBODYBONE_BreakableAttachment = 1,
		SOFTBODYBONE_TwoWayAttachment = 2,
		SOFTBODYBONE_MAX = 3,
	}
	enum ClothBoneType : ubyte
	{
		CLOTHBONE_Fixed = 0,
		CLOTHBONE_BreakableAttachment = 1,
		CLOTHBONE_TearLine = 2,
		CLOTHBONE_MAX = 3,
	}
	enum TriangleSortOption : ubyte
	{
		TRISORT_None = 0,
		TRISORT_CenterRadialDistance = 1,
		TRISORT_Random = 2,
		TRISORT_Tootle = 3,
		TRISORT_MergeContiguous = 4,
		TRISORT_Custom = 5,
		TRISORT_CustomLeftRight = 6,
		TRISORT_MAX = 7,
	}
	enum BoneBreakOption : ubyte
	{
		BONEBREAK_SoftPreferred = 0,
		BONEBREAK_AutoDetect = 1,
		BONEBREAK_RigidPreferred = 2,
		BONEBREAK_MAX = 3,
	}
	enum TriangleSortAxis : ubyte
	{
		TSA_X_Axis = 0,
		TSA_Y_Axis = 1,
		TSA_Z_Axis = 2,
		TSA_MAX = 3,
	}
	enum ClothMovementScaleGen : ubyte
	{
		ECMDM_DistToFixedVert = 0,
		ECMDM_VertexBoneWeight = 1,
		ECMDM_Empty = 2,
		ECMDM_MAX = 3,
	}
	struct SoftBodyTetraLink
	{
		public @property final auto ref int Index() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Index[4];
		public @property final auto ref Vector Bary() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __Bary[12];
	}
	struct SoftBodySpecialBoneInfo
	{
		public @property final auto ref ScriptArray!(int) AttachedVertexIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		private ubyte __AttachedVertexIndices[12];
		public @property final auto ref SkeletalMesh.SoftBodyBoneType BoneType() { return *cast(SkeletalMesh.SoftBodyBoneType*)(cast(size_t)&this + 8); }
		private ubyte __BoneType[1];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
	}
	struct ClothSpecialBoneInfo
	{
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
		public @property final auto ref SkeletalMesh.ClothBoneType BoneType() { return *cast(SkeletalMesh.ClothBoneType*)(cast(size_t)&this + 8); }
		private ubyte __BoneType[1];
		public @property final auto ref ScriptArray!(int) AttachedVertexIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		private ubyte __AttachedVertexIndices[12];
	}
	struct SkeletalMeshLODInfo
	{
		public @property final auto ref float DisplayFactor() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __DisplayFactor[4];
		public @property final auto ref float LODHysteresis() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __LODHysteresis[4];
		public @property final auto ref ScriptArray!(int) LODMaterialMap() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 8); }
		private ubyte __LODMaterialMap[12];
		public @property final auto ref ScriptArray!(bool) bEnableShadowCasting() { return *cast(ScriptArray!(bool)*)(cast(size_t)&this + 20); }
		private ubyte __bEnableShadowCasting[12];
		public @property final auto ref ScriptArray!(SkeletalMesh.TriangleSortOption) TriangleSorting() { return *cast(ScriptArray!(SkeletalMesh.TriangleSortOption)*)(cast(size_t)&this + 32); }
		private ubyte __TriangleSorting[12];
		// WARNING: Property 'TriangleSortSettings' has the same name as a defined type!
	}
	struct TriangleSortSettings
	{
		public @property final auto ref SkeletalMesh.TriangleSortOption TriangleSorting() { return *cast(SkeletalMesh.TriangleSortOption*)(cast(size_t)&this + 0); }
		private ubyte __TriangleSorting[1];
		public @property final auto ref SkeletalMesh.TriangleSortAxis CustomLeftRightAxis() { return *cast(SkeletalMesh.TriangleSortAxis*)(cast(size_t)&this + 1); }
		private ubyte __CustomLeftRightAxis[1];
		public @property final auto ref ScriptName CustomLeftRightBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __CustomLeftRightBoneName[8];
	}
	struct BoneMirrorExport
	{
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
		public @property final auto ref ScriptName SourceBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __SourceBoneName[8];
		public @property final auto ref UObject.EAxis BoneFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)&this + 16); }
		private ubyte __BoneFlipAxis[1];
	}
	struct BoneMirrorInfo
	{
		public @property final auto ref int SourceIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __SourceIndex[4];
		public @property final auto ref UObject.EAxis BoneFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)&this + 4); }
		private ubyte __BoneFlipAxis[1];
	}
	// WARNING: Property 'FaceFXAsset' has the same name as a defined type!
	public @property final auto ref UObject.BoxSphereBounds Bounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(ApexClothingAsset) ClothingAssets() { return *cast(ScriptArray!(ApexClothingAsset)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref Vector Origin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref Rotator RotOrigin() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptArray!(int) RefSkeleton() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int SkeletalDepth() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref UObject.IndirectArray_Mirror LODModels() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) RefBasesInvMatrix() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptArray!(SkeletalMesh.BoneMirrorInfo) SkelMirrorTable() { return *cast(ScriptArray!(SkeletalMesh.BoneMirrorInfo)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref UObject.EAxis SkelMirrorAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref UObject.EAxis SkelMirrorFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 249); }
	public @property final auto ref ScriptArray!(SkeletalMeshSocket) Sockets() { return *cast(ScriptArray!(SkeletalMeshSocket)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptArray!(ScriptString) BoneBreakNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptArray!(SkeletalMesh.BoneBreakOption) BoneBreakOptions() { return *cast(ScriptArray!(SkeletalMesh.BoneBreakOption)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo) LODInfo() { return *cast(ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo)*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptArray!(ScriptName) PerPolyCollisionBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ScriptArray!(ScriptName) AddToParentPerPolyCollisionBone() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptArray!(int) PerPolyBoneKDOPs() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 324); }
	public @property final bool bPerPolyUseSoftWeighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x1) != 0; }
	public @property final bool bPerPolyUseSoftWeighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x1; } return val; }
	public @property final bool bUseSimpleLineCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x2) != 0; }
	public @property final bool bUseSimpleLineCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x2; } return val; }
	public @property final bool bUseSimpleBoxCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x4) != 0; }
	public @property final bool bUseSimpleBoxCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x4; } return val; }
	public @property final bool bForceCPUSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x8) != 0; }
	public @property final bool bForceCPUSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x8; } return val; }
	public @property final bool bUseFullPrecisionUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x10) != 0; }
	public @property final bool bUseFullPrecisionUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x10; } return val; }
	public @property final bool bUsePackedPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x20) != 0; }
	public @property final bool bUsePackedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x20; } return val; }
	public @property final auto ref PhysicsAsset BoundsPreviewAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref int LODBiasPC() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int LODBiasPS3() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int LODBiasXbox360() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ClothMesh() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptArray!(float) ClothMeshScale() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref ScriptArray!(int) ClothToGraphicsVertMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref ScriptArray!(float) ClothMovementScale() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref SkeletalMesh.ClothMovementScaleGen ClothMovementScaleGenMode() { return *cast(SkeletalMesh.ClothMovementScaleGen*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref float ClothToAnimMeshMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
	public @property final bool bLimitClothToAnimMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x1) != 0; }
	public @property final bool bLimitClothToAnimMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(int) ClothWeldingMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref int ClothWeldingDomain() { return *cast(int*)(cast(size_t)cast(void*)this + 468); }
	public @property final auto ref ScriptArray!(int) ClothWeldedIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 472); }
	public @property final bool bForceNoWelding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool bForceNoWelding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	public @property final auto ref int NumFreeClothVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(int) ClothIndexBuffer() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref ScriptArray!(ScriptName) ClothBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref int ClothHierarchyLevels() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final bool bEnableClothBendConstraints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
	public @property final bool bEnableClothBendConstraints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	public @property final bool bEnableClothDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x2) != 0; }
	public @property final bool bEnableClothDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x2; } return val; }
	public @property final bool bUseClothCOMDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x4) != 0; }
	public @property final bool bUseClothCOMDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x4; } return val; }
	public @property final auto ref float ClothStretchStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float ClothBendStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float ClothDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float ClothThickness() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref float ClothDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref int ClothIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int ClothHierarchicalIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float ClothFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float ClothRelativeGridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float ClothPressure() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float ClothCollisionResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float ClothAttachmentResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float ClothAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float ClothSleepLinearVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float HardStretchLimitFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final bool bHardStretchLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
	public @property final bool bHardStretchLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
	public @property final bool bEnableClothOrthoBendConstraints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x2) != 0; }
	public @property final bool bEnableClothOrthoBendConstraints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x2; } return val; }
	public @property final bool bEnableClothSelfCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x4) != 0; }
	public @property final bool bEnableClothSelfCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x4; } return val; }
	public @property final bool bEnableClothPressure() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x8) != 0; }
	public @property final bool bEnableClothPressure(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x8; } return val; }
	public @property final bool bEnableClothTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x10) != 0; }
	public @property final bool bEnableClothTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x10; } return val; }
	public @property final auto ref ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo) ClothSpecialBones() { return *cast(ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo)*)(cast(size_t)cast(void*)this + 588); }
	public @property final bool bEnableClothLineChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x1) != 0; }
	public @property final bool bEnableClothLineChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x1; } return val; }
	public @property final bool bClothMetal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x2) != 0; }
	public @property final bool bClothMetal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x2; } return val; }
	public @property final auto ref float ClothMetalImpulseThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float ClothMetalPenetrationDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float ClothMetalMaxDeformationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
	public @property final bool bEnableClothTearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x1) != 0; }
	public @property final bool bEnableClothTearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x1; } return val; }
	public @property final auto ref float ClothTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref int ClothTearReserve() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
	public @property final bool bEnableValidBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x1) != 0; }
	public @property final bool bEnableValidBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x1; } return val; }
	public @property final auto ref Vector ValidBoundsMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref Vector ValidBoundsMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref UObject.Map_Mirror ClothTornTriMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref ScriptArray!(int) SoftBodySurfaceToGraphicsVertMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref ScriptArray!(int) SoftBodySurfaceIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref ScriptArray!(Vector) SoftBodyTetraVertsUnscaled() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref ScriptArray!(int) SoftBodyTetraIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref ScriptArray!(SkeletalMesh.SoftBodyTetraLink) SoftBodyTetraLinks() { return *cast(ScriptArray!(SkeletalMesh.SoftBodyTetraLink)*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref ScriptArray!(UObject.Pointer) CachedSoftBodyMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref ScriptArray!(float) CachedSoftBodyMeshScales() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref ScriptArray!(ScriptName) SoftBodyBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo) SoftBodySpecialBones() { return *cast(ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo)*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float SoftBodyVolumeStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref float SoftBodyStretchingStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float SoftBodyDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref float SoftBodyParticleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float SoftBodyDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref int SoftBodySolverIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref float SoftBodyFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref float SoftBodyRelativeGridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref float SoftBodySleepLinearVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 856); }
	public @property final bool bEnableSoftBodySelfCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 860) & 0x1) != 0; }
	public @property final bool bEnableSoftBodySelfCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 860) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 860) &= ~0x1; } return val; }
	public @property final auto ref float SoftBodyAttachmentResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref float SoftBodyCollisionResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref float SoftBodyDetailLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
	public @property final auto ref int SoftBodySubdivisionLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 876); }
	public @property final bool bSoftBodyIsoSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x1) != 0; }
	public @property final bool bSoftBodyIsoSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x1; } return val; }
	public @property final bool bEnableSoftBodyDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x2) != 0; }
	public @property final bool bEnableSoftBodyDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x2; } return val; }
	public @property final bool bUseSoftBodyCOMDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x4) != 0; }
	public @property final bool bUseSoftBodyCOMDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x4; } return val; }
	public @property final auto ref float SoftBodyAttachmentThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
	public @property final bool bEnableSoftBodyTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 888) & 0x1) != 0; }
	public @property final bool bEnableSoftBodyTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 888) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 888) &= ~0x1; } return val; }
	public @property final auto ref float SoftBodyAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 892); }
	public @property final bool bEnableSoftBodyLineChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1) != 0; }
	public @property final bool bEnableSoftBodyLineChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1; } return val; }
	public @property final bool bHasVertexColors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2) != 0; }
	public @property final bool bHasVertexColors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(bool) GraphicsIndexIsCloth() { return *cast(ScriptArray!(bool)*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref ScriptArray!(float) CachedStreamingTextureFactors() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref int ReleaseResourcesFence() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref QWord SkelMeshRUID() { return *cast(QWord*)(cast(size_t)cast(void*)this + 932); }
}
