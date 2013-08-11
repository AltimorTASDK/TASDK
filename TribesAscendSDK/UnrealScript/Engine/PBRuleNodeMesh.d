module UnrealScript.Engine.PBRuleNodeMesh;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface PBRuleNodeMesh : PBRuleNodeBase
{
public extern(D):
	struct BuildingMeshInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(MaterialInterface) MaterialOverrides() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 32); }
				ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides) SectionOverrides() { return *cast(ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides)*)(cast(size_t)&this + 44); }
				int OverriddenMeshLightMapRes() { return *cast(int*)(cast(size_t)&this + 28); }
				float Chance() { return *cast(float*)(cast(size_t)&this + 12); }
				float DimZ() { return *cast(float*)(cast(size_t)&this + 8); }
				float DimX() { return *cast(float*)(cast(size_t)&this + 4); }
				StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
			}
			bool bOverrideMeshLightMapRes() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bOverrideMeshLightMapRes(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bMeshScaleTranslation() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bMeshScaleTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct BuildingMatOverrides
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref ScriptArray!(MaterialInterface) MaterialOptions() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo) BuildingMeshes() { return *cast(ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo)*)(cast(size_t)cast(void*)this + 104); }
			PBRuleNodeMesh.BuildingMeshInfo PartialOccludedBuildingMesh() { return *cast(PBRuleNodeMesh.BuildingMeshInfo*)(cast(size_t)cast(void*)this + 116); }
		}
		bool bBlockAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bBlockAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bDoOcclusionTest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bDoOcclusionTest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	}
	final int PickRandomBuildingMesh()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24258], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
