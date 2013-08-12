module UnrealScript.Engine.ProcBuilding;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ProcBuilding")); }
	private static __gshared ProcBuilding mDefaultProperties;
	@property final static ProcBuilding DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ProcBuilding)("ProcBuilding Engine.Default__ProcBuilding")); }
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
			ScriptFunction FindEdgeForTopLevelScope() { return mFindEdgeForTopLevelScope ? mFindEdgeForTopLevelScope : (mFindEdgeForTopLevelScope = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.FindEdgeForTopLevelScope")); }
			ScriptFunction BreakFractureComponent() { return mBreakFractureComponent ? mBreakFractureComponent : (mBreakFractureComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.BreakFractureComponent")); }
			ScriptFunction GetAllGroupedProcBuildings() { return mGetAllGroupedProcBuildings ? mGetAllGroupedProcBuildings : (mGetAllGroupedProcBuildings = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.GetAllGroupedProcBuildings")); }
			ScriptFunction GetBaseMostBuilding() { return mGetBaseMostBuilding ? mGetBaseMostBuilding : (mGetBaseMostBuilding = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.GetBaseMostBuilding")); }
			ScriptFunction FindComponentsForTopLevelScope() { return mFindComponentsForTopLevelScope ? mFindComponentsForTopLevelScope : (mFindComponentsForTopLevelScope = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.FindComponentsForTopLevelScope")); }
			ScriptFunction ClearBuildingMeshes() { return mClearBuildingMeshes ? mClearBuildingMeshes : (mClearBuildingMeshes = ScriptObject.Find!(ScriptFunction)("Function Engine.ProcBuilding.ClearBuildingMeshes")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBMaterialParam")); }
		@property final auto ref
		{
			ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			// WARNING: Property 'Color' has the same name as a defined type!
		}
	}
	struct PBFracMeshCompInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBFracMeshCompInfo")); }
		@property final auto ref int TopLevelScopeIndex() { return *cast(int*)(cast(size_t)&this + 4); }
	}
	struct PBFaceUVInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBFaceUVInfo")); }
		@property final auto ref
		{
			UObject.Vector2D Offset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 0); }
			UObject.Vector2D Size() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 8); }
		}
	}
	struct PBMemUsageInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBMemUsageInfo")); }
		@property final auto ref
		{
			ProcBuilding Building() { return *cast(ProcBuilding*)(cast(size_t)&this + 0); }
			ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)&this + 4); }
			int NumStaticMeshComponent() { return *cast(int*)(cast(size_t)&this + 8); }
			int NumInstancedStaticMeshComponents() { return *cast(int*)(cast(size_t)&this + 12); }
			int NumInstancedTris() { return *cast(int*)(cast(size_t)&this + 16); }
			int LightmapMemBytes() { return *cast(int*)(cast(size_t)&this + 20); }
			int ShadowmapMemBytes() { return *cast(int*)(cast(size_t)&this + 24); }
			int LODDiffuseMemBytes() { return *cast(int*)(cast(size_t)&this + 28); }
			int LODLightingMemBytes() { return *cast(int*)(cast(size_t)&this + 32); }
		}
	}
	struct PBMeshCompInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBMeshCompInfo")); }
		@property final auto ref int TopLevelScopeIndex() { return *cast(int*)(cast(size_t)&this + 4); }
	}
	struct PBScopeProcessInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBScopeProcessInfo")); }
		@property final
		{
			auto ref
			{
				ProcBuilding OwningBuilding() { return *cast(ProcBuilding*)(cast(size_t)&this + 0); }
				ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)&this + 4); }
				ScriptName RulesetVariation() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			}
			bool bGenerateLODPoly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bGenerateLODPoly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
			bool bPartOfNonRect() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
			bool bPartOfNonRect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		}
	}
	struct PBScope2D
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBScope2D")); }
		@property final auto ref
		{
			UObject.Matrix ScopeFrame() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
			float DimX() { return *cast(float*)(cast(size_t)&this + 64); }
			float DimZ() { return *cast(float*)(cast(size_t)&this + 68); }
		}
	}
	struct PBEdgeInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ProcBuilding.PBEdgeInfo")); }
		@property final auto ref
		{
			Vector EdgeEnd() { return *cast(Vector*)(cast(size_t)&this + 0); }
			Vector EdgeStart() { return *cast(Vector*)(cast(size_t)&this + 12); }
			int ScopeAIndex() { return *cast(int*)(cast(size_t)&this + 24); }
			ProcBuilding.EScopeEdge ScopeAEdge() { return *cast(ProcBuilding.EScopeEdge*)(cast(size_t)&this + 28); }
			int ScopeBIndex() { return *cast(int*)(cast(size_t)&this + 32); }
			ProcBuilding.EScopeEdge ScopeBEdge() { return *cast(ProcBuilding.EScopeEdge*)(cast(size_t)&this + 36); }
			float EdgeAngle() { return *cast(float*)(cast(size_t)&this + 40); }
		}
	}
	@property final
	{
		auto ref
		{
			ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 520); }
			ScriptArray!(ProcBuilding.PBMeshCompInfo) BuildingMeshCompInfos() { return *cast(ScriptArray!(ProcBuilding.PBMeshCompInfo)*)(cast(size_t)cast(void*)this + 524); }
			ScriptArray!(ProcBuilding.PBFracMeshCompInfo) BuildingFracMeshCompInfos() { return *cast(ScriptArray!(ProcBuilding.PBFracMeshCompInfo)*)(cast(size_t)cast(void*)this + 536); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LODMeshComps() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(ProcBuilding.PBFaceUVInfo) LODMeshUVInfos() { return *cast(ScriptArray!(ProcBuilding.PBFaceUVInfo)*)(cast(size_t)cast(void*)this + 568); }
			ScriptArray!(ProcBuilding.PBScope2D) TopLevelScopes() { return *cast(ScriptArray!(ProcBuilding.PBScope2D)*)(cast(size_t)cast(void*)this + 580); }
			int NumMeshedTopLevelScopes() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
			ScriptArray!(ProcBuilding.PBFaceUVInfo) TopLevelScopeUVInfos() { return *cast(ScriptArray!(ProcBuilding.PBFaceUVInfo)*)(cast(size_t)cast(void*)this + 596); }
			ScriptArray!(ProcBuilding.PBScopeProcessInfo) TopLevelScopeInfos() { return *cast(ScriptArray!(ProcBuilding.PBScopeProcessInfo)*)(cast(size_t)cast(void*)this + 608); }
			ScriptArray!(ProcBuilding.PBEdgeInfo) EdgeInfos() { return *cast(ScriptArray!(ProcBuilding.PBEdgeInfo)*)(cast(size_t)cast(void*)this + 620); }
			float MaxFacadeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float MinFacadeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			ScriptArray!(ProcBuilding) OverlappingBuildings() { return *cast(ScriptArray!(ProcBuilding)*)(cast(size_t)cast(void*)this + 640); }
			float SimpleMeshMassiveLODDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			float RenderToTexturePullBackAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			int RoofLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
			int NonRectWallLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
			float LODRenderToTextureScale() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			ScriptName ParamSwatchName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 672); }
			ScriptArray!(ProcBuilding.PBMaterialParam) BuildingMaterialParams() { return *cast(ScriptArray!(ProcBuilding.PBMaterialParam)*)(cast(size_t)cast(void*)this + 680); }
			ScriptArray!(MaterialInstanceConstant) BuildingMatParamMICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 692); }
			StaticMeshActor LowLODPersistentActor() { return *cast(StaticMeshActor*)(cast(size_t)cast(void*)this + 704); }
			Actor CurrentSimpleMeshActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 712); }
			ScriptArray!(ProcBuilding) AttachedBuildings() { return *cast(ScriptArray!(ProcBuilding)*)(cast(size_t)cast(void*)this + 716); }
			int BuildingInstanceVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 728); }
		}
		bool bGenerateRoofMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x1) != 0; }
		bool bGenerateRoofMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x1; } return val; }
		bool bGenerateFloorMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x2) != 0; }
		bool bGenerateFloorMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x2; } return val; }
		bool bApplyRulesToRoof() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x4) != 0; }
		bool bApplyRulesToRoof(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x4; } return val; }
		bool bApplyRulesToFloor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x8) != 0; }
		bool bApplyRulesToFloor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x8; } return val; }
		bool bSplitWallsAtRoofLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x10) != 0; }
		bool bSplitWallsAtRoofLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x10; } return val; }
		bool bSplitWallsAtWallEdges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x20) != 0; }
		bool bSplitWallsAtWallEdges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x20; } return val; }
		bool bQuickEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x40) != 0; }
		bool bQuickEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x40; } return val; }
		bool bBuildingBrushCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x80) != 0; }
		bool bBuildingBrushCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x80; } return val; }
		bool bDebugDrawEdgeInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x100) != 0; }
		bool bDebugDrawEdgeInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x100; } return val; }
		bool bDebugDrawScopes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x200) != 0; }
		bool bDebugDrawScopes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x200; } return val; }
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
	void GetAllGroupedProcBuildings(ScriptArray!(ProcBuilding)* OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ProcBuilding)*)params.ptr = *OutSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllGroupedProcBuildings, params.ptr, cast(void*)0);
		*OutSet = *cast(ScriptArray!(ProcBuilding)*)params.ptr;
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
