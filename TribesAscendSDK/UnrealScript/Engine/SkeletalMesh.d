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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMesh")); }
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
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.SoftBodyTetraLink")); }
		@property final auto ref
		{
			int Index() { return *cast(int*)(cast(size_t)&this + 0); }
			Vector Bary() { return *cast(Vector*)(cast(size_t)&this + 4); }
		}
	}
	struct SoftBodySpecialBoneInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.SoftBodySpecialBoneInfo")); }
		@property final auto ref
		{
			ScriptArray!(int) AttachedVertexIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
			SkeletalMesh.SoftBodyBoneType BoneType() { return *cast(SkeletalMesh.SoftBodyBoneType*)(cast(size_t)&this + 8); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct ClothSpecialBoneInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.ClothSpecialBoneInfo")); }
		@property final auto ref
		{
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			SkeletalMesh.ClothBoneType BoneType() { return *cast(SkeletalMesh.ClothBoneType*)(cast(size_t)&this + 8); }
			ScriptArray!(int) AttachedVertexIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		}
	}
	struct SkeletalMeshLODInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.SkeletalMeshLODInfo")); }
		@property final auto ref
		{
			float DisplayFactor() { return *cast(float*)(cast(size_t)&this + 0); }
			float LODHysteresis() { return *cast(float*)(cast(size_t)&this + 4); }
			ScriptArray!(int) LODMaterialMap() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 8); }
			ScriptArray!(bool) bEnableShadowCasting() { return *cast(ScriptArray!(bool)*)(cast(size_t)&this + 20); }
			ScriptArray!(SkeletalMesh.TriangleSortOption) TriangleSorting() { return *cast(ScriptArray!(SkeletalMesh.TriangleSortOption)*)(cast(size_t)&this + 32); }
			// WARNING: Property 'TriangleSortSettings' has the same name as a defined type!
		}
	}
	struct TriangleSortSettings
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.TriangleSortSettings")); }
		@property final auto ref
		{
			SkeletalMesh.TriangleSortOption TriangleSorting() { return *cast(SkeletalMesh.TriangleSortOption*)(cast(size_t)&this + 0); }
			SkeletalMesh.TriangleSortAxis CustomLeftRightAxis() { return *cast(SkeletalMesh.TriangleSortAxis*)(cast(size_t)&this + 1); }
			ScriptName CustomLeftRightBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		}
	}
	struct BoneMirrorExport
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.BoneMirrorExport")); }
		@property final auto ref
		{
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptName SourceBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			UObject.EAxis BoneFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)&this + 16); }
		}
	}
	struct BoneMirrorInfo
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMesh.BoneMirrorInfo")); }
		@property final auto ref
		{
			int SourceIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			UObject.EAxis BoneFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)&this + 4); }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'FaceFXAsset' has the same name as a defined type!
			UObject.BoxSphereBounds Bounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 88); }
			ScriptArray!(ApexClothingAsset) ClothingAssets() { return *cast(ScriptArray!(ApexClothingAsset)*)(cast(size_t)cast(void*)this + 100); }
			Vector Origin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
			Rotator RotOrigin() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 124); }
			ScriptArray!(int) RefSkeleton() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 136); }
			int SkeletalDepth() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			UObject.IndirectArray_Mirror LODModels() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 212); }
			ScriptArray!(UObject.BoneAtom) RefBasesInvMatrix() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 224); }
			ScriptArray!(SkeletalMesh.BoneMirrorInfo) SkelMirrorTable() { return *cast(ScriptArray!(SkeletalMesh.BoneMirrorInfo)*)(cast(size_t)cast(void*)this + 236); }
			UObject.EAxis SkelMirrorAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 248); }
			UObject.EAxis SkelMirrorFlipAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 249); }
			ScriptArray!(SkeletalMeshSocket) Sockets() { return *cast(ScriptArray!(SkeletalMeshSocket)*)(cast(size_t)cast(void*)this + 252); }
			ScriptArray!(ScriptString) BoneBreakNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 264); }
			ScriptArray!(SkeletalMesh.BoneBreakOption) BoneBreakOptions() { return *cast(ScriptArray!(SkeletalMesh.BoneBreakOption)*)(cast(size_t)cast(void*)this + 276); }
			ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo) LODInfo() { return *cast(ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo)*)(cast(size_t)cast(void*)this + 288); }
			ScriptArray!(ScriptName) PerPolyCollisionBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 300); }
			ScriptArray!(ScriptName) AddToParentPerPolyCollisionBone() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
			ScriptArray!(int) PerPolyBoneKDOPs() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 324); }
			PhysicsAsset BoundsPreviewAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 344); }
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 348); }
			int LODBiasPC() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int LODBiasPS3() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int LODBiasXbox360() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
			ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
			ScriptArray!(UObject.Pointer) ClothMesh() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 396); }
			ScriptArray!(float) ClothMeshScale() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 408); }
			ScriptArray!(int) ClothToGraphicsVertMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 420); }
			ScriptArray!(float) ClothMovementScale() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 432); }
			SkeletalMesh.ClothMovementScaleGen ClothMovementScaleGenMode() { return *cast(SkeletalMesh.ClothMovementScaleGen*)(cast(size_t)cast(void*)this + 444); }
			float ClothToAnimMeshMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
			ScriptArray!(int) ClothWeldingMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 456); }
			int ClothWeldingDomain() { return *cast(int*)(cast(size_t)cast(void*)this + 468); }
			ScriptArray!(int) ClothWeldedIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 472); }
			int NumFreeClothVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			ScriptArray!(int) ClothIndexBuffer() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 492); }
			ScriptArray!(ScriptName) ClothBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 504); }
			int ClothHierarchyLevels() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			float ClothStretchStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float ClothBendStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float ClothDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			float ClothThickness() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			float ClothDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			int ClothIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
			int ClothHierarchicalIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
			float ClothFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float ClothRelativeGridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float ClothPressure() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float ClothCollisionResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float ClothAttachmentResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float ClothAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float ClothSleepLinearVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float HardStretchLimitFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo) ClothSpecialBones() { return *cast(ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo)*)(cast(size_t)cast(void*)this + 588); }
			float ClothMetalImpulseThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float ClothMetalPenetrationDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float ClothMetalMaxDeformationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			float ClothTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			int ClothTearReserve() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
			Vector ValidBoundsMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 632); }
			Vector ValidBoundsMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 644); }
			UObject.Map_Mirror ClothTornTriMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 656); }
			ScriptArray!(int) SoftBodySurfaceToGraphicsVertMap() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 716); }
			ScriptArray!(int) SoftBodySurfaceIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 728); }
			ScriptArray!(Vector) SoftBodyTetraVertsUnscaled() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 740); }
			ScriptArray!(int) SoftBodyTetraIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 752); }
			ScriptArray!(SkeletalMesh.SoftBodyTetraLink) SoftBodyTetraLinks() { return *cast(ScriptArray!(SkeletalMesh.SoftBodyTetraLink)*)(cast(size_t)cast(void*)this + 764); }
			ScriptArray!(UObject.Pointer) CachedSoftBodyMeshes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 776); }
			ScriptArray!(float) CachedSoftBodyMeshScales() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 788); }
			ScriptArray!(ScriptName) SoftBodyBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 800); }
			ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo) SoftBodySpecialBones() { return *cast(ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo)*)(cast(size_t)cast(void*)this + 812); }
			float SoftBodyVolumeStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			float SoftBodyStretchingStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float SoftBodyDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float SoftBodyParticleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			float SoftBodyDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			int SoftBodySolverIterations() { return *cast(int*)(cast(size_t)cast(void*)this + 844); }
			float SoftBodyFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
			float SoftBodyRelativeGridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			float SoftBodySleepLinearVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 856); }
			float SoftBodyAttachmentResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 864); }
			float SoftBodyCollisionResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
			float SoftBodyDetailLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
			int SoftBodySubdivisionLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 876); }
			float SoftBodyAttachmentThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
			float SoftBodyAttachmentTearFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 892); }
			ScriptArray!(bool) GraphicsIndexIsCloth() { return *cast(ScriptArray!(bool)*)(cast(size_t)cast(void*)this + 900); }
			ScriptArray!(float) CachedStreamingTextureFactors() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 912); }
			float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			int ReleaseResourcesFence() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
			QWord SkelMeshRUID() { return *cast(QWord*)(cast(size_t)cast(void*)this + 932); }
		}
		bool bPerPolyUseSoftWeighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x1) != 0; }
		bool bPerPolyUseSoftWeighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x1; } return val; }
		bool bUseSimpleLineCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x2) != 0; }
		bool bUseSimpleLineCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x2; } return val; }
		bool bUseSimpleBoxCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x4) != 0; }
		bool bUseSimpleBoxCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x4; } return val; }
		bool bForceCPUSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x8) != 0; }
		bool bForceCPUSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x8; } return val; }
		bool bUseFullPrecisionUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x10) != 0; }
		bool bUseFullPrecisionUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x10; } return val; }
		bool bUsePackedPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x20) != 0; }
		bool bUsePackedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x20; } return val; }
		bool bLimitClothToAnimMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x1) != 0; }
		bool bLimitClothToAnimMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x1; } return val; }
		bool bForceNoWelding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool bForceNoWelding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
		bool bEnableClothBendConstraints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
		bool bEnableClothBendConstraints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
		bool bEnableClothDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x2) != 0; }
		bool bEnableClothDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x2; } return val; }
		bool bUseClothCOMDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x4) != 0; }
		bool bUseClothCOMDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x4; } return val; }
		bool bHardStretchLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
		bool bHardStretchLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
		bool bEnableClothOrthoBendConstraints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x2) != 0; }
		bool bEnableClothOrthoBendConstraints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x2; } return val; }
		bool bEnableClothSelfCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x4) != 0; }
		bool bEnableClothSelfCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x4; } return val; }
		bool bEnableClothPressure() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x8) != 0; }
		bool bEnableClothPressure(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x8; } return val; }
		bool bEnableClothTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x10) != 0; }
		bool bEnableClothTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x10; } return val; }
		bool bEnableClothLineChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x1) != 0; }
		bool bEnableClothLineChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x1; } return val; }
		bool bClothMetal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x2) != 0; }
		bool bClothMetal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x2; } return val; }
		bool bEnableClothTearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x1) != 0; }
		bool bEnableClothTearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x1; } return val; }
		bool bEnableValidBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x1) != 0; }
		bool bEnableValidBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x1; } return val; }
		bool bEnableSoftBodySelfCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 860) & 0x1) != 0; }
		bool bEnableSoftBodySelfCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 860) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 860) &= ~0x1; } return val; }
		bool bSoftBodyIsoSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x1) != 0; }
		bool bSoftBodyIsoSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x1; } return val; }
		bool bEnableSoftBodyDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x2) != 0; }
		bool bEnableSoftBodyDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x2; } return val; }
		bool bUseSoftBodyCOMDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 880) & 0x4) != 0; }
		bool bUseSoftBodyCOMDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 880) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 880) &= ~0x4; } return val; }
		bool bEnableSoftBodyTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 888) & 0x1) != 0; }
		bool bEnableSoftBodyTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 888) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 888) &= ~0x1; } return val; }
		bool bEnableSoftBodyLineChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1) != 0; }
		bool bEnableSoftBodyLineChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1; } return val; }
		bool bHasVertexColors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2) != 0; }
		bool bHasVertexColors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2; } return val; }
	}
}
