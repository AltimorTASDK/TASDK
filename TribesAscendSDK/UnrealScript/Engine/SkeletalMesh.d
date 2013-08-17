module UnrealScript.Engine.SkeletalMesh;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMesh")()); }
	private static __gshared SkeletalMesh mDefaultProperties;
	@property final static SkeletalMesh DefaultProperties() { mixin(MGDPC!(SkeletalMesh, "SkeletalMesh Engine.Default__SkeletalMesh")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.SoftBodyTetraLink")()); }
		@property final auto ref
		{
			int Index() { mixin(MGPS!("int", 0)()); }
			Vector Bary() { mixin(MGPS!("Vector", 4)()); }
		}
	}
	struct SoftBodySpecialBoneInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.SoftBodySpecialBoneInfo")()); }
		@property final auto ref
		{
			ScriptArray!(int) AttachedVertexIndices() { mixin(MGPS!("ScriptArray!(int)", 12)()); }
			SkeletalMesh.SoftBodyBoneType BoneType() { mixin(MGPS!("SkeletalMesh.SoftBodyBoneType", 8)()); }
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct ClothSpecialBoneInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.ClothSpecialBoneInfo")()); }
		@property final auto ref
		{
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 0)()); }
			SkeletalMesh.ClothBoneType BoneType() { mixin(MGPS!("SkeletalMesh.ClothBoneType", 8)()); }
			ScriptArray!(int) AttachedVertexIndices() { mixin(MGPS!("ScriptArray!(int)", 12)()); }
		}
	}
	struct SkeletalMeshLODInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.SkeletalMeshLODInfo")()); }
		@property final auto ref
		{
			float DisplayFactor() { mixin(MGPS!("float", 0)()); }
			float LODHysteresis() { mixin(MGPS!("float", 4)()); }
			ScriptArray!(int) LODMaterialMap() { mixin(MGPS!("ScriptArray!(int)", 8)()); }
			ScriptArray!(bool) bEnableShadowCasting() { mixin(MGPS!("ScriptArray!(bool)", 20)()); }
			ScriptArray!(SkeletalMesh.TriangleSortOption) TriangleSorting() { mixin(MGPS!("ScriptArray!(SkeletalMesh.TriangleSortOption)", 32)()); }
			// WARNING: Property 'TriangleSortSettings' has the same name as a defined type!
		}
	}
	struct TriangleSortSettings
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.TriangleSortSettings")()); }
		@property final auto ref
		{
			SkeletalMesh.TriangleSortOption TriangleSorting() { mixin(MGPS!("SkeletalMesh.TriangleSortOption", 0)()); }
			SkeletalMesh.TriangleSortAxis CustomLeftRightAxis() { mixin(MGPS!("SkeletalMesh.TriangleSortAxis", 1)()); }
			ScriptName CustomLeftRightBoneName() { mixin(MGPS!("ScriptName", 4)()); }
		}
	}
	struct BoneMirrorExport
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.BoneMirrorExport")()); }
		@property final auto ref
		{
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 0)()); }
			ScriptName SourceBoneName() { mixin(MGPS!("ScriptName", 8)()); }
			UObject.EAxis BoneFlipAxis() { mixin(MGPS!("UObject.EAxis", 16)()); }
		}
	}
	struct BoneMirrorInfo
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMesh.BoneMirrorInfo")()); }
		@property final auto ref
		{
			int SourceIndex() { mixin(MGPS!("int", 0)()); }
			UObject.EAxis BoneFlipAxis() { mixin(MGPS!("UObject.EAxis", 4)()); }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'FaceFXAsset' has the same name as a defined type!
			UObject.BoxSphereBounds Bounds() { mixin(MGPC!("UObject.BoxSphereBounds", 60)()); }
			ScriptArray!(MaterialInterface) Materials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 88)()); }
			ScriptArray!(ApexClothingAsset) ClothingAssets() { mixin(MGPC!("ScriptArray!(ApexClothingAsset)", 100)()); }
			Vector Origin() { mixin(MGPC!("Vector", 112)()); }
			Rotator RotOrigin() { mixin(MGPC!("Rotator", 124)()); }
			ScriptArray!(int) RefSkeleton() { mixin(MGPC!("ScriptArray!(int)", 136)()); }
			int SkeletalDepth() { mixin(MGPC!("int", 148)()); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'NameIndexMap'!
			UObject.IndirectArray_Mirror LODModels() { mixin(MGPC!("UObject.IndirectArray_Mirror", 212)()); }
			ScriptArray!(UObject.BoneAtom) RefBasesInvMatrix() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 224)()); }
			ScriptArray!(SkeletalMesh.BoneMirrorInfo) SkelMirrorTable() { mixin(MGPC!("ScriptArray!(SkeletalMesh.BoneMirrorInfo)", 236)()); }
			UObject.EAxis SkelMirrorAxis() { mixin(MGPC!("UObject.EAxis", 248)()); }
			UObject.EAxis SkelMirrorFlipAxis() { mixin(MGPC!("UObject.EAxis", 249)()); }
			ScriptArray!(SkeletalMeshSocket) Sockets() { mixin(MGPC!("ScriptArray!(SkeletalMeshSocket)", 252)()); }
			ScriptArray!(ScriptString) BoneBreakNames() { mixin(MGPC!("ScriptArray!(ScriptString)", 264)()); }
			ScriptArray!(SkeletalMesh.BoneBreakOption) BoneBreakOptions() { mixin(MGPC!("ScriptArray!(SkeletalMesh.BoneBreakOption)", 276)()); }
			ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo) LODInfo() { mixin(MGPC!("ScriptArray!(SkeletalMesh.SkeletalMeshLODInfo)", 288)()); }
			ScriptArray!(ScriptName) PerPolyCollisionBones() { mixin(MGPC!("ScriptArray!(ScriptName)", 300)()); }
			ScriptArray!(ScriptName) AddToParentPerPolyCollisionBone() { mixin(MGPC!("ScriptArray!(ScriptName)", 312)()); }
			ScriptArray!(int) PerPolyBoneKDOPs() { mixin(MGPC!("ScriptArray!(int)", 324)()); }
			PhysicsAsset BoundsPreviewAsset() { mixin(MGPC!("PhysicsAsset", 344)()); }
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { mixin(MGPC!("ScriptArray!(MorphTargetSet)", 348)()); }
			int LODBiasPC() { mixin(MGPC!("int", 360)()); }
			int LODBiasPS3() { mixin(MGPC!("int", 364)()); }
			int LODBiasXbox360() { mixin(MGPC!("int", 368)()); }
			ScriptString SourceFilePath() { mixin(MGPC!("ScriptString", 372)()); }
			ScriptString SourceFileTimestamp() { mixin(MGPC!("ScriptString", 384)()); }
			ScriptArray!(UObject.Pointer) ClothMesh() { mixin(MGPC!("ScriptArray!(UObject.Pointer)", 396)()); }
			ScriptArray!(float) ClothMeshScale() { mixin(MGPC!("ScriptArray!(float)", 408)()); }
			ScriptArray!(int) ClothToGraphicsVertMap() { mixin(MGPC!("ScriptArray!(int)", 420)()); }
			ScriptArray!(float) ClothMovementScale() { mixin(MGPC!("ScriptArray!(float)", 432)()); }
			SkeletalMesh.ClothMovementScaleGen ClothMovementScaleGenMode() { mixin(MGPC!("SkeletalMesh.ClothMovementScaleGen", 444)()); }
			float ClothToAnimMeshMaxDist() { mixin(MGPC!("float", 448)()); }
			ScriptArray!(int) ClothWeldingMap() { mixin(MGPC!("ScriptArray!(int)", 456)()); }
			int ClothWeldingDomain() { mixin(MGPC!("int", 468)()); }
			ScriptArray!(int) ClothWeldedIndices() { mixin(MGPC!("ScriptArray!(int)", 472)()); }
			int NumFreeClothVerts() { mixin(MGPC!("int", 488)()); }
			ScriptArray!(int) ClothIndexBuffer() { mixin(MGPC!("ScriptArray!(int)", 492)()); }
			ScriptArray!(ScriptName) ClothBones() { mixin(MGPC!("ScriptArray!(ScriptName)", 504)()); }
			int ClothHierarchyLevels() { mixin(MGPC!("int", 516)()); }
			float ClothStretchStiffness() { mixin(MGPC!("float", 524)()); }
			float ClothBendStiffness() { mixin(MGPC!("float", 528)()); }
			float ClothDensity() { mixin(MGPC!("float", 532)()); }
			float ClothThickness() { mixin(MGPC!("float", 536)()); }
			float ClothDamping() { mixin(MGPC!("float", 540)()); }
			int ClothIterations() { mixin(MGPC!("int", 544)()); }
			int ClothHierarchicalIterations() { mixin(MGPC!("int", 548)()); }
			float ClothFriction() { mixin(MGPC!("float", 552)()); }
			float ClothRelativeGridSpacing() { mixin(MGPC!("float", 556)()); }
			float ClothPressure() { mixin(MGPC!("float", 560)()); }
			float ClothCollisionResponseCoefficient() { mixin(MGPC!("float", 564)()); }
			float ClothAttachmentResponseCoefficient() { mixin(MGPC!("float", 568)()); }
			float ClothAttachmentTearFactor() { mixin(MGPC!("float", 572)()); }
			float ClothSleepLinearVelocity() { mixin(MGPC!("float", 576)()); }
			float HardStretchLimitFactor() { mixin(MGPC!("float", 580)()); }
			ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo) ClothSpecialBones() { mixin(MGPC!("ScriptArray!(SkeletalMesh.ClothSpecialBoneInfo)", 588)()); }
			float ClothMetalImpulseThreshold() { mixin(MGPC!("float", 604)()); }
			float ClothMetalPenetrationDepth() { mixin(MGPC!("float", 608)()); }
			float ClothMetalMaxDeformationDistance() { mixin(MGPC!("float", 612)()); }
			float ClothTearFactor() { mixin(MGPC!("float", 620)()); }
			int ClothTearReserve() { mixin(MGPC!("int", 624)()); }
			Vector ValidBoundsMin() { mixin(MGPC!("Vector", 632)()); }
			Vector ValidBoundsMax() { mixin(MGPC!("Vector", 644)()); }
			UObject.Map_Mirror ClothTornTriMap() { mixin(MGPC!("UObject.Map_Mirror", 656)()); }
			ScriptArray!(int) SoftBodySurfaceToGraphicsVertMap() { mixin(MGPC!("ScriptArray!(int)", 716)()); }
			ScriptArray!(int) SoftBodySurfaceIndices() { mixin(MGPC!("ScriptArray!(int)", 728)()); }
			ScriptArray!(Vector) SoftBodyTetraVertsUnscaled() { mixin(MGPC!("ScriptArray!(Vector)", 740)()); }
			ScriptArray!(int) SoftBodyTetraIndices() { mixin(MGPC!("ScriptArray!(int)", 752)()); }
			ScriptArray!(SkeletalMesh.SoftBodyTetraLink) SoftBodyTetraLinks() { mixin(MGPC!("ScriptArray!(SkeletalMesh.SoftBodyTetraLink)", 764)()); }
			ScriptArray!(UObject.Pointer) CachedSoftBodyMeshes() { mixin(MGPC!("ScriptArray!(UObject.Pointer)", 776)()); }
			ScriptArray!(float) CachedSoftBodyMeshScales() { mixin(MGPC!("ScriptArray!(float)", 788)()); }
			ScriptArray!(ScriptName) SoftBodyBones() { mixin(MGPC!("ScriptArray!(ScriptName)", 800)()); }
			ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo) SoftBodySpecialBones() { mixin(MGPC!("ScriptArray!(SkeletalMesh.SoftBodySpecialBoneInfo)", 812)()); }
			float SoftBodyVolumeStiffness() { mixin(MGPC!("float", 824)()); }
			float SoftBodyStretchingStiffness() { mixin(MGPC!("float", 828)()); }
			float SoftBodyDensity() { mixin(MGPC!("float", 832)()); }
			float SoftBodyParticleRadius() { mixin(MGPC!("float", 836)()); }
			float SoftBodyDamping() { mixin(MGPC!("float", 840)()); }
			int SoftBodySolverIterations() { mixin(MGPC!("int", 844)()); }
			float SoftBodyFriction() { mixin(MGPC!("float", 848)()); }
			float SoftBodyRelativeGridSpacing() { mixin(MGPC!("float", 852)()); }
			float SoftBodySleepLinearVelocity() { mixin(MGPC!("float", 856)()); }
			float SoftBodyAttachmentResponse() { mixin(MGPC!("float", 864)()); }
			float SoftBodyCollisionResponse() { mixin(MGPC!("float", 868)()); }
			float SoftBodyDetailLevel() { mixin(MGPC!("float", 872)()); }
			int SoftBodySubdivisionLevel() { mixin(MGPC!("int", 876)()); }
			float SoftBodyAttachmentThreshold() { mixin(MGPC!("float", 884)()); }
			float SoftBodyAttachmentTearFactor() { mixin(MGPC!("float", 892)()); }
			ScriptArray!(bool) GraphicsIndexIsCloth() { mixin(MGPC!("ScriptArray!(bool)", 900)()); }
			ScriptArray!(float) CachedStreamingTextureFactors() { mixin(MGPC!("ScriptArray!(float)", 912)()); }
			float StreamingDistanceMultiplier() { mixin(MGPC!("float", 924)()); }
			int ReleaseResourcesFence() { mixin(MGPC!("int", 928)()); }
			QWord SkelMeshRUID() { mixin(MGPC!("QWord", 932)()); }
		}
		bool bPerPolyUseSoftWeighting() { mixin(MGBPC!(336, 0x1)()); }
		bool bPerPolyUseSoftWeighting(bool val) { mixin(MSBPC!(336, 0x1)()); }
		bool bUseSimpleLineCollision() { mixin(MGBPC!(336, 0x2)()); }
		bool bUseSimpleLineCollision(bool val) { mixin(MSBPC!(336, 0x2)()); }
		bool bUseSimpleBoxCollision() { mixin(MGBPC!(336, 0x4)()); }
		bool bUseSimpleBoxCollision(bool val) { mixin(MSBPC!(336, 0x4)()); }
		bool bForceCPUSkinning() { mixin(MGBPC!(336, 0x8)()); }
		bool bForceCPUSkinning(bool val) { mixin(MSBPC!(336, 0x8)()); }
		bool bUseFullPrecisionUVs() { mixin(MGBPC!(336, 0x10)()); }
		bool bUseFullPrecisionUVs(bool val) { mixin(MSBPC!(336, 0x10)()); }
		bool bUsePackedPosition() { mixin(MGBPC!(336, 0x20)()); }
		bool bUsePackedPosition(bool val) { mixin(MSBPC!(336, 0x20)()); }
		bool bLimitClothToAnimMesh() { mixin(MGBPC!(452, 0x1)()); }
		bool bLimitClothToAnimMesh(bool val) { mixin(MSBPC!(452, 0x1)()); }
		bool bForceNoWelding() { mixin(MGBPC!(484, 0x1)()); }
		bool bForceNoWelding(bool val) { mixin(MSBPC!(484, 0x1)()); }
		bool bEnableClothBendConstraints() { mixin(MGBPC!(520, 0x1)()); }
		bool bEnableClothBendConstraints(bool val) { mixin(MSBPC!(520, 0x1)()); }
		bool bEnableClothDamping() { mixin(MGBPC!(520, 0x2)()); }
		bool bEnableClothDamping(bool val) { mixin(MSBPC!(520, 0x2)()); }
		bool bUseClothCOMDamping() { mixin(MGBPC!(520, 0x4)()); }
		bool bUseClothCOMDamping(bool val) { mixin(MSBPC!(520, 0x4)()); }
		bool bHardStretchLimit() { mixin(MGBPC!(584, 0x1)()); }
		bool bHardStretchLimit(bool val) { mixin(MSBPC!(584, 0x1)()); }
		bool bEnableClothOrthoBendConstraints() { mixin(MGBPC!(584, 0x2)()); }
		bool bEnableClothOrthoBendConstraints(bool val) { mixin(MSBPC!(584, 0x2)()); }
		bool bEnableClothSelfCollision() { mixin(MGBPC!(584, 0x4)()); }
		bool bEnableClothSelfCollision(bool val) { mixin(MSBPC!(584, 0x4)()); }
		bool bEnableClothPressure() { mixin(MGBPC!(584, 0x8)()); }
		bool bEnableClothPressure(bool val) { mixin(MSBPC!(584, 0x8)()); }
		bool bEnableClothTwoWayCollision() { mixin(MGBPC!(584, 0x10)()); }
		bool bEnableClothTwoWayCollision(bool val) { mixin(MSBPC!(584, 0x10)()); }
		bool bEnableClothLineChecks() { mixin(MGBPC!(600, 0x1)()); }
		bool bEnableClothLineChecks(bool val) { mixin(MSBPC!(600, 0x1)()); }
		bool bClothMetal() { mixin(MGBPC!(600, 0x2)()); }
		bool bClothMetal(bool val) { mixin(MSBPC!(600, 0x2)()); }
		bool bEnableClothTearing() { mixin(MGBPC!(616, 0x1)()); }
		bool bEnableClothTearing(bool val) { mixin(MSBPC!(616, 0x1)()); }
		bool bEnableValidBounds() { mixin(MGBPC!(628, 0x1)()); }
		bool bEnableValidBounds(bool val) { mixin(MSBPC!(628, 0x1)()); }
		bool bEnableSoftBodySelfCollision() { mixin(MGBPC!(860, 0x1)()); }
		bool bEnableSoftBodySelfCollision(bool val) { mixin(MSBPC!(860, 0x1)()); }
		bool bSoftBodyIsoSurface() { mixin(MGBPC!(880, 0x1)()); }
		bool bSoftBodyIsoSurface(bool val) { mixin(MSBPC!(880, 0x1)()); }
		bool bEnableSoftBodyDamping() { mixin(MGBPC!(880, 0x2)()); }
		bool bEnableSoftBodyDamping(bool val) { mixin(MSBPC!(880, 0x2)()); }
		bool bUseSoftBodyCOMDamping() { mixin(MGBPC!(880, 0x4)()); }
		bool bUseSoftBodyCOMDamping(bool val) { mixin(MSBPC!(880, 0x4)()); }
		bool bEnableSoftBodyTwoWayCollision() { mixin(MGBPC!(888, 0x1)()); }
		bool bEnableSoftBodyTwoWayCollision(bool val) { mixin(MSBPC!(888, 0x1)()); }
		bool bEnableSoftBodyLineChecks() { mixin(MGBPC!(896, 0x1)()); }
		bool bEnableSoftBodyLineChecks(bool val) { mixin(MSBPC!(896, 0x1)()); }
		bool bHasVertexColors() { mixin(MGBPC!(896, 0x2)()); }
		bool bHasVertexColors(bool val) { mixin(MSBPC!(896, 0x2)()); }
	}
}
