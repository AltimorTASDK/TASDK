module UnrealScript.Engine.ProcBuilding;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface ProcBuilding : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ProcBuilding")); }
	private static __gshared ProcBuilding mDefaultProperties;
	@property final static ProcBuilding DefaultProperties() { mixin(MGDPC("ProcBuilding", "ProcBuilding Engine.Default__ProcBuilding")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindEdgeForTopLevelScope;
			ScriptFunction mBreakFractureComponent;
			ScriptFunction mGetAllGroupedProcBuildings;
			ScriptFunction mGetBaseMostBuilding;
			ScriptFunction mFindComponentsForTopLevelScope;
			ScriptFunction mClearBuildingMeshes;
		}
		public @property static final
		{
			ScriptFunction FindEdgeForTopLevelScope() { mixin(MGF("mFindEdgeForTopLevelScope", "Function Engine.ProcBuilding.FindEdgeForTopLevelScope")); }
			ScriptFunction BreakFractureComponent() { mixin(MGF("mBreakFractureComponent", "Function Engine.ProcBuilding.BreakFractureComponent")); }
			ScriptFunction GetAllGroupedProcBuildings() { mixin(MGF("mGetAllGroupedProcBuildings", "Function Engine.ProcBuilding.GetAllGroupedProcBuildings")); }
			ScriptFunction GetBaseMostBuilding() { mixin(MGF("mGetBaseMostBuilding", "Function Engine.ProcBuilding.GetBaseMostBuilding")); }
			ScriptFunction FindComponentsForTopLevelScope() { mixin(MGF("mFindComponentsForTopLevelScope", "Function Engine.ProcBuilding.FindComponentsForTopLevelScope")); }
			ScriptFunction ClearBuildingMeshes() { mixin(MGF("mClearBuildingMeshes", "Function Engine.ProcBuilding.ClearBuildingMeshes")); }
		}
	}
	static struct Constants
	{
		enum
		{
			PROCBUILDING_VERSION = 1,
			ROOF_MINZ = 0.7,
		}
	}
	enum EScopeEdge : ubyte
	{
		EPSA_Top = 0,
		EPSA_Bottom = 1,
		EPSA_Left = 2,
		EPSA_Right = 3,
		EPSA_None = 4,
		EPSA_MAX = 5,
	}
	enum EBuildingStatsBrowserColumns : ubyte
	{
		BSBC_Name = 0,
		BSBC_Ruleset = 1,
		BSBC_NumStaticMeshComps = 2,
		BSBC_NumInstancedStaticMeshComps = 3,
		BSBC_NumInstancedTris = 4,
		BSBC_LightmapMemBytes = 5,
		BSBC_ShadowmapMemBytes = 6,
		BSBC_LODDiffuseMemBytes = 7,
		BSBC_LODLightingMemBytes = 8,
		BSBC_MAX = 9,
	}
	enum EPBCornerType : ubyte
	{
		EPBC_Default = 0,
		EPBC_Chamfer = 1,
		EPBC_Round = 2,
		EPBC_MAX = 3,
	}
	struct PBMaterialParam
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBMaterialParam")); }
		@property final auto ref
		{
			ScriptName ParamName() { mixin(MGPS("ScriptName", 0)); }
			UObject.LinearColor ColorVar() { mixin(MGPS("UObject.LinearColor", 8)); }
		}
	}
	struct PBFracMeshCompInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBFracMeshCompInfo")); }
		@property final auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FracMeshComp'!
			int TopLevelScopeIndex() { mixin(MGPS("int", 4)); }
		}
	}
	struct PBFaceUVInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBFaceUVInfo")); }
		@property final auto ref
		{
			UObject.Vector2D Offset() { mixin(MGPS("UObject.Vector2D", 0)); }
			UObject.Vector2D Size() { mixin(MGPS("UObject.Vector2D", 8)); }
		}
	}
	struct PBMemUsageInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBMemUsageInfo")); }
		@property final auto ref
		{
			ProcBuilding Building() { mixin(MGPS("ProcBuilding", 0)); }
			ProcBuildingRuleset Ruleset() { mixin(MGPS("ProcBuildingRuleset", 4)); }
			int NumStaticMeshComponent() { mixin(MGPS("int", 8)); }
			int NumInstancedStaticMeshComponents() { mixin(MGPS("int", 12)); }
			int NumInstancedTris() { mixin(MGPS("int", 16)); }
			int LightmapMemBytes() { mixin(MGPS("int", 20)); }
			int ShadowmapMemBytes() { mixin(MGPS("int", 24)); }
			int LODDiffuseMemBytes() { mixin(MGPS("int", 28)); }
			int LODLightingMemBytes() { mixin(MGPS("int", 32)); }
		}
	}
	struct PBMeshCompInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBMeshCompInfo")); }
		@property final auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MeshComp'!
			int TopLevelScopeIndex() { mixin(MGPS("int", 4)); }
		}
	}
	struct PBScopeProcessInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBScopeProcessInfo")); }
		@property final
		{
			auto ref
			{
				ProcBuilding OwningBuilding() { mixin(MGPS("ProcBuilding", 0)); }
				ProcBuildingRuleset Ruleset() { mixin(MGPS("ProcBuildingRuleset", 4)); }
				ScriptName RulesetVariation() { mixin(MGPS("ScriptName", 8)); }
			}
			bool bGenerateLODPoly() { mixin(MGBPS(16, 0x1)); }
			bool bGenerateLODPoly(bool val) { mixin(MSBPS(16, 0x1)); }
			bool bPartOfNonRect() { mixin(MGBPS(16, 0x2)); }
			bool bPartOfNonRect(bool val) { mixin(MSBPS(16, 0x2)); }
		}
	}
	struct PBScope2D
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBScope2D")); }
		@property final auto ref
		{
			UObject.Matrix ScopeFrame() { mixin(MGPS("UObject.Matrix", 0)); }
			float DimX() { mixin(MGPS("float", 64)); }
			float DimZ() { mixin(MGPS("float", 68)); }
		}
	}
	struct PBEdgeInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ProcBuilding.PBEdgeInfo")); }
		@property final auto ref
		{
			Vector EdgeEnd() { mixin(MGPS("Vector", 0)); }
			Vector EdgeStart() { mixin(MGPS("Vector", 12)); }
			int ScopeAIndex() { mixin(MGPS("int", 24)); }
			ProcBuilding.EScopeEdge ScopeAEdge() { mixin(MGPS("ProcBuilding.EScopeEdge", 28)); }
			int ScopeBIndex() { mixin(MGPS("int", 32)); }
			ProcBuilding.EScopeEdge ScopeBEdge() { mixin(MGPS("ProcBuilding.EScopeEdge", 36)); }
			float EdgeAngle() { mixin(MGPS("float", 40)); }
		}
	}
	@property final
	{
		auto ref
		{
			ProcBuildingRuleset Ruleset() { mixin(MGPC("ProcBuildingRuleset", 520)); }
			ScriptArray!(ProcBuilding.PBMeshCompInfo) BuildingMeshCompInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBMeshCompInfo)", 524)); }
			ScriptArray!(ProcBuilding.PBFracMeshCompInfo) BuildingFracMeshCompInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBFracMeshCompInfo)", 536)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SimpleMeshComp'!
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LODMeshComps() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 556)); }
			ScriptArray!(ProcBuilding.PBFaceUVInfo) LODMeshUVInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBFaceUVInfo)", 568)); }
			ScriptArray!(ProcBuilding.PBScope2D) TopLevelScopes() { mixin(MGPC("ScriptArray!(ProcBuilding.PBScope2D)", 580)); }
			int NumMeshedTopLevelScopes() { mixin(MGPC("int", 592)); }
			ScriptArray!(ProcBuilding.PBFaceUVInfo) TopLevelScopeUVInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBFaceUVInfo)", 596)); }
			ScriptArray!(ProcBuilding.PBScopeProcessInfo) TopLevelScopeInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBScopeProcessInfo)", 608)); }
			ScriptArray!(ProcBuilding.PBEdgeInfo) EdgeInfos() { mixin(MGPC("ScriptArray!(ProcBuilding.PBEdgeInfo)", 620)); }
			float MaxFacadeZ() { mixin(MGPC("float", 632)); }
			float MinFacadeZ() { mixin(MGPC("float", 636)); }
			ScriptArray!(ProcBuilding) OverlappingBuildings() { mixin(MGPC("ScriptArray!(ProcBuilding)", 640)); }
			float SimpleMeshMassiveLODDistance() { mixin(MGPC("float", 652)); }
			float RenderToTexturePullBackAmount() { mixin(MGPC("float", 656)); }
			int RoofLightmapRes() { mixin(MGPC("int", 660)); }
			int NonRectWallLightmapRes() { mixin(MGPC("int", 664)); }
			float LODRenderToTextureScale() { mixin(MGPC("float", 668)); }
			ScriptName ParamSwatchName() { mixin(MGPC("ScriptName", 672)); }
			ScriptArray!(ProcBuilding.PBMaterialParam) BuildingMaterialParams() { mixin(MGPC("ScriptArray!(ProcBuilding.PBMaterialParam)", 680)); }
			ScriptArray!(MaterialInstanceConstant) BuildingMatParamMICs() { mixin(MGPC("ScriptArray!(MaterialInstanceConstant)", 692)); }
			StaticMeshActor LowLODPersistentActor() { mixin(MGPC("StaticMeshActor", 704)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CurrentSimpleMeshComp'!
			Actor CurrentSimpleMeshActor() { mixin(MGPC("Actor", 712)); }
			ScriptArray!(ProcBuilding) AttachedBuildings() { mixin(MGPC("ScriptArray!(ProcBuilding)", 716)); }
			int BuildingInstanceVersion() { mixin(MGPC("int", 728)); }
		}
		bool bGenerateRoofMesh() { mixin(MGBPC(552, 0x1)); }
		bool bGenerateRoofMesh(bool val) { mixin(MSBPC(552, 0x1)); }
		bool bGenerateFloorMesh() { mixin(MGBPC(552, 0x2)); }
		bool bGenerateFloorMesh(bool val) { mixin(MSBPC(552, 0x2)); }
		bool bApplyRulesToRoof() { mixin(MGBPC(552, 0x4)); }
		bool bApplyRulesToRoof(bool val) { mixin(MSBPC(552, 0x4)); }
		bool bApplyRulesToFloor() { mixin(MGBPC(552, 0x8)); }
		bool bApplyRulesToFloor(bool val) { mixin(MSBPC(552, 0x8)); }
		bool bSplitWallsAtRoofLevels() { mixin(MGBPC(552, 0x10)); }
		bool bSplitWallsAtRoofLevels(bool val) { mixin(MSBPC(552, 0x10)); }
		bool bSplitWallsAtWallEdges() { mixin(MGBPC(552, 0x20)); }
		bool bSplitWallsAtWallEdges(bool val) { mixin(MSBPC(552, 0x20)); }
		bool bQuickEdited() { mixin(MGBPC(552, 0x40)); }
		bool bQuickEdited(bool val) { mixin(MSBPC(552, 0x40)); }
		bool bBuildingBrushCollision() { mixin(MGBPC(552, 0x80)); }
		bool bBuildingBrushCollision(bool val) { mixin(MSBPC(552, 0x80)); }
		bool bDebugDrawEdgeInfo() { mixin(MGBPC(552, 0x100)); }
		bool bDebugDrawEdgeInfo(bool val) { mixin(MSBPC(552, 0x100)); }
		bool bDebugDrawScopes() { mixin(MGBPC(552, 0x200)); }
		bool bDebugDrawScopes(bool val) { mixin(MSBPC(552, 0x200)); }
	}
final:
	int FindEdgeForTopLevelScope(int TopLevelScopeIndex, ProcBuilding.EScopeEdge Edge)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TopLevelScopeIndex;
		*cast(ProcBuilding.EScopeEdge*)&params[4] = Edge;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindEdgeForTopLevelScope, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void BreakFractureComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* Comp, Vector BoxMin, Vector BoxMax)
	{
		ubyte params[28];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = Comp;
		*cast(Vector*)&params[4] = BoxMin;
		*cast(Vector*)&params[16] = BoxMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakFractureComponent, params.ptr, cast(void*)0);
	}
	void GetAllGroupedProcBuildings(ref ScriptArray!(ProcBuilding) OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ProcBuilding)*)params.ptr = OutSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllGroupedProcBuildings, params.ptr, cast(void*)0);
		OutSet = *cast(ScriptArray!(ProcBuilding)*)params.ptr;
	}
	ProcBuilding GetBaseMostBuilding()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseMostBuilding, params.ptr, cast(void*)0);
		return *cast(ProcBuilding*)params.ptr;
	}
	ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) FindComponentsForTopLevelScope(int TopLevelScopeIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TopLevelScopeIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindComponentsForTopLevelScope, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)&params[4];
	}
	void ClearBuildingMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearBuildingMeshes, cast(void*)0, cast(void*)0);
	}
}
