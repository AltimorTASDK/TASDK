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
	public static immutable auto PROCBUILDING_VERSION = 1;
	public static immutable auto ROOF_MINZ = 0.7;
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
		public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParamName[8];
		// WARNING: Property 'Color' has the same name as a defined type!
	}
	struct PBFracMeshCompInfo
	{
		public @property final auto ref int TopLevelScopeIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __TopLevelScopeIndex[4];
	}
	struct PBFaceUVInfo
	{
		public @property final auto ref UObject.Vector2D Offset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 0); }
		private ubyte __Offset[8];
		public @property final auto ref UObject.Vector2D Size() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 8); }
		private ubyte __Size[8];
	}
	struct PBMemUsageInfo
	{
		public @property final auto ref ProcBuilding Building() { return *cast(ProcBuilding*)(cast(size_t)&this + 0); }
		private ubyte __Building[4];
		public @property final auto ref ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)&this + 4); }
		private ubyte __Ruleset[4];
		public @property final auto ref int NumStaticMeshComponent() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __NumStaticMeshComponent[4];
		public @property final auto ref int NumInstancedStaticMeshComponents() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __NumInstancedStaticMeshComponents[4];
		public @property final auto ref int NumInstancedTris() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __NumInstancedTris[4];
		public @property final auto ref int LightmapMemBytes() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __LightmapMemBytes[4];
		public @property final auto ref int ShadowmapMemBytes() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __ShadowmapMemBytes[4];
		public @property final auto ref int LODDiffuseMemBytes() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __LODDiffuseMemBytes[4];
		public @property final auto ref int LODLightingMemBytes() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __LODLightingMemBytes[4];
	}
	struct PBMeshCompInfo
	{
		public @property final auto ref int TopLevelScopeIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __TopLevelScopeIndex[4];
	}
	struct PBScopeProcessInfo
	{
		public @property final auto ref ProcBuilding OwningBuilding() { return *cast(ProcBuilding*)(cast(size_t)&this + 0); }
		private ubyte __OwningBuilding[4];
		public @property final auto ref ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)&this + 4); }
		private ubyte __Ruleset[4];
		public @property final auto ref ScriptName RulesetVariation() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __RulesetVariation[8];
		public @property final bool bGenerateLODPoly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bGenerateLODPoly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bGenerateLODPoly[4];
		public @property final bool bPartOfNonRect() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
		public @property final bool bPartOfNonRect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		private ubyte __bPartOfNonRect[4];
	}
	struct PBScope2D
	{
		public @property final auto ref UObject.Matrix ScopeFrame() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __ScopeFrame[64];
		public @property final auto ref float DimX() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __DimX[4];
		public @property final auto ref float DimZ() { return *cast(float*)(cast(size_t)&this + 68); }
		private ubyte __DimZ[4];
	}
	struct PBEdgeInfo
	{
		public @property final auto ref Vector EdgeEnd() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __EdgeEnd[12];
		public @property final auto ref Vector EdgeStart() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __EdgeStart[12];
		public @property final auto ref int ScopeAIndex() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __ScopeAIndex[4];
		public @property final auto ref ProcBuilding.EScopeEdge ScopeAEdge() { return *cast(ProcBuilding.EScopeEdge*)(cast(size_t)&this + 28); }
		private ubyte __ScopeAEdge[1];
		public @property final auto ref int ScopeBIndex() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __ScopeBIndex[4];
		public @property final auto ref ProcBuilding.EScopeEdge ScopeBEdge() { return *cast(ProcBuilding.EScopeEdge*)(cast(size_t)&this + 36); }
		private ubyte __ScopeBEdge[1];
		public @property final auto ref float EdgeAngle() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __EdgeAngle[4];
	}
	public @property final auto ref ProcBuildingRuleset Ruleset() { return *cast(ProcBuildingRuleset*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBMeshCompInfo) BuildingMeshCompInfos() { return *cast(ScriptArray!(ProcBuilding.PBMeshCompInfo)*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBFracMeshCompInfo) BuildingFracMeshCompInfos() { return *cast(ScriptArray!(ProcBuilding.PBFracMeshCompInfo)*)(cast(size_t)cast(void*)this + 536); }
	public @property final bool bGenerateRoofMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x1) != 0; }
	public @property final bool bGenerateRoofMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x1; } return val; }
	public @property final bool bGenerateFloorMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x2) != 0; }
	public @property final bool bGenerateFloorMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x2; } return val; }
	public @property final bool bApplyRulesToRoof() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x4) != 0; }
	public @property final bool bApplyRulesToRoof(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x4; } return val; }
	public @property final bool bApplyRulesToFloor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x8) != 0; }
	public @property final bool bApplyRulesToFloor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x8; } return val; }
	public @property final bool bSplitWallsAtRoofLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x10) != 0; }
	public @property final bool bSplitWallsAtRoofLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x10; } return val; }
	public @property final bool bSplitWallsAtWallEdges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x20) != 0; }
	public @property final bool bSplitWallsAtWallEdges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x20; } return val; }
	public @property final bool bQuickEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x40) != 0; }
	public @property final bool bQuickEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x40; } return val; }
	public @property final bool bBuildingBrushCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x80) != 0; }
	public @property final bool bBuildingBrushCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x80; } return val; }
	public @property final bool bDebugDrawEdgeInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x100) != 0; }
	public @property final bool bDebugDrawEdgeInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x100; } return val; }
	public @property final bool bDebugDrawScopes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x200) != 0; }
	public @property final bool bDebugDrawScopes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x200; } return val; }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) LODMeshComps() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBFaceUVInfo) LODMeshUVInfos() { return *cast(ScriptArray!(ProcBuilding.PBFaceUVInfo)*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBScope2D) TopLevelScopes() { return *cast(ScriptArray!(ProcBuilding.PBScope2D)*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref int NumMeshedTopLevelScopes() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBFaceUVInfo) TopLevelScopeUVInfos() { return *cast(ScriptArray!(ProcBuilding.PBFaceUVInfo)*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBScopeProcessInfo) TopLevelScopeInfos() { return *cast(ScriptArray!(ProcBuilding.PBScopeProcessInfo)*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBEdgeInfo) EdgeInfos() { return *cast(ScriptArray!(ProcBuilding.PBEdgeInfo)*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref float MaxFacadeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref float MinFacadeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref ScriptArray!(ProcBuilding) OverlappingBuildings() { return *cast(ScriptArray!(ProcBuilding)*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float SimpleMeshMassiveLODDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref float RenderToTexturePullBackAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref int RoofLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref int NonRectWallLightmapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref float LODRenderToTextureScale() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref ScriptName ParamSwatchName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref ScriptArray!(ProcBuilding.PBMaterialParam) BuildingMaterialParams() { return *cast(ScriptArray!(ProcBuilding.PBMaterialParam)*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref ScriptArray!(MaterialInstanceConstant) BuildingMatParamMICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref StaticMeshActor LowLODPersistentActor() { return *cast(StaticMeshActor*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref Actor CurrentSimpleMeshActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref ScriptArray!(ProcBuilding) AttachedBuildings() { return *cast(ScriptArray!(ProcBuilding)*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref int BuildingInstanceVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 728); }
	final int FindEdgeForTopLevelScope(int TopLevelScopeIndex, ProcBuilding.EScopeEdge Edge)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = TopLevelScopeIndex;
		*cast(ProcBuilding.EScopeEdge*)&params[4] = Edge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24086], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void BreakFractureComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Comp, Vector BoxMin, Vector BoxMax)
	{
		ubyte params[28];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Comp;
		*cast(Vector*)&params[4] = BoxMin;
		*cast(Vector*)&params[16] = BoxMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24087], params.ptr, cast(void*)0);
	}
	final void GetAllGroupedProcBuildings(ScriptArray!(ProcBuilding)* OutSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ProcBuilding)*)params.ptr = *OutSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24093], params.ptr, cast(void*)0);
		*OutSet = *cast(ScriptArray!(ProcBuilding)*)params.ptr;
	}
	final ProcBuilding GetBaseMostBuilding()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24097], params.ptr, cast(void*)0);
		return *cast(ProcBuilding*)params.ptr;
	}
	final ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) FindComponentsForTopLevelScope(int TopLevelScopeIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TopLevelScopeIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24100], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)&params[4];
	}
	final void ClearBuildingMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24102], cast(void*)0, cast(void*)0);
	}
}
