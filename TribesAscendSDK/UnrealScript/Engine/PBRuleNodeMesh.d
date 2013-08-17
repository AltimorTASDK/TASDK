module UnrealScript.Engine.PBRuleNodeMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface PBRuleNodeMesh : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeMesh")); }
	private static __gshared PBRuleNodeMesh mDefaultProperties;
	@property final static PBRuleNodeMesh DefaultProperties() { mixin(MGDPC("PBRuleNodeMesh", "PBRuleNodeMesh Engine.Default__PBRuleNodeMesh")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPickRandomBuildingMesh;
		public @property static final ScriptFunction PickRandomBuildingMesh() { mixin(MGF("mPickRandomBuildingMesh", "Function Engine.PBRuleNodeMesh.PickRandomBuildingMesh")); }
	}
	struct BuildingMeshInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.PBRuleNodeMesh.BuildingMeshInfo")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MaterialInterface) MaterialOverrides() { mixin(MGPS("ScriptArray!(MaterialInterface)", 32)); }
				ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides) SectionOverrides() { mixin(MGPS("ScriptArray!(PBRuleNodeMesh.BuildingMatOverrides)", 44)); }
				int OverriddenMeshLightMapRes() { mixin(MGPS("int", 28)); }
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Rotation'!
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Translation'!
				float Chance() { mixin(MGPS("float", 12)); }
				float DimZ() { mixin(MGPS("float", 8)); }
				float DimX() { mixin(MGPS("float", 4)); }
				StaticMesh Mesh() { mixin(MGPS("StaticMesh", 0)); }
			}
			bool bOverrideMeshLightMapRes() { mixin(MGBPS(24, 0x2)); }
			bool bOverrideMeshLightMapRes(bool val) { mixin(MSBPS(24, 0x2)); }
			bool bMeshScaleTranslation() { mixin(MGBPS(24, 0x1)); }
			bool bMeshScaleTranslation(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	struct BuildingMatOverrides
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.PBRuleNodeMesh.BuildingMatOverrides")); }
		@property final auto ref ScriptArray!(MaterialInterface) MaterialOptions() { mixin(MGPS("ScriptArray!(MaterialInterface)", 0)); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo) BuildingMeshes() { mixin(MGPC("ScriptArray!(PBRuleNodeMesh.BuildingMeshInfo)", 104)); }
			PBRuleNodeMesh.BuildingMeshInfo PartialOccludedBuildingMesh() { mixin(MGPC("PBRuleNodeMesh.BuildingMeshInfo", 116)); }
		}
		bool bBlockAll() { mixin(MGBPC(172, 0x2)); }
		bool bBlockAll(bool val) { mixin(MSBPC(172, 0x2)); }
		bool bDoOcclusionTest() { mixin(MGBPC(172, 0x1)); }
		bool bDoOcclusionTest(bool val) { mixin(MSBPC(172, 0x1)); }
	}
	final int PickRandomBuildingMesh()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickRandomBuildingMesh, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
