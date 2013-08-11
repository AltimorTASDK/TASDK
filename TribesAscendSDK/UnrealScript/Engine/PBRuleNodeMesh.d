module UnrealScript.Engine.PBRuleNodeMesh;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface PBRuleNodeMesh : PBRuleNodeBase
{
	struct BuildingMeshInfo
	{
		public @property final auto ref ScriptArray!(MaterialInterface) MaterialOverrides() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 32); }
		private ubyte __MaterialOverrides[12];
		public @property final auto ref ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides) SectionOverrides() { return *cast(ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides)*)(cast(size_t)&this + 44); }
		private ubyte __SectionOverrides[12];
		public @property final auto ref int OverriddenMeshLightMapRes() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __OverriddenMeshLightMapRes[4];
		public @property final bool bOverrideMeshLightMapRes() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bOverrideMeshLightMapRes(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bOverrideMeshLightMapRes[4];
		public @property final bool bMeshScaleTranslation() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bMeshScaleTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bMeshScaleTranslation[4];
		public @property final auto ref float Chance() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Chance[4];
		public @property final auto ref float DimZ() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __DimZ[4];
		public @property final auto ref float DimX() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __DimX[4];
		public @property final auto ref StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
		private ubyte __Mesh[4];
	}
	struct BuildingMatOverrides
	{
		public @property final auto ref ScriptArray!(MaterialInterface) MaterialOptions() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
		private ubyte __MaterialOptions[12];
	}
	public @property final auto ref ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo) BuildingMeshes() { return *cast(ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo)*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bBlockAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
	public @property final bool bBlockAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
	public @property final bool bDoOcclusionTest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bDoOcclusionTest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final auto ref PBRuleNodeMesh.BuildingMeshInfo PartialOccludedBuildingMesh() { return *cast(PBRuleNodeMesh.BuildingMeshInfo*)(cast(size_t)cast(void*)this + 116); }
	final int PickRandomBuildingMesh()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24258], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
