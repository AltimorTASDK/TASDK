module UnrealScript.Engine.SpeedTreeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.SpeedTree;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ShadowMap1D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface SpeedTreeComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SpeedTreeComponent")); }
	private static __gshared SpeedTreeComponent mDefaultProperties;
	@property final static SpeedTreeComponent DefaultProperties() { mixin(MGDPC("SpeedTreeComponent", "SpeedTreeComponent Engine.Default__SpeedTreeComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMaterial;
			ScriptFunction mSetMaterial;
		}
		public @property static final
		{
			ScriptFunction GetMaterial() { mixin(MGF("mGetMaterial", "Function Engine.SpeedTreeComponent.GetMaterial")); }
			ScriptFunction SetMaterial() { mixin(MGF("mSetMaterial", "Function Engine.SpeedTreeComponent.SetMaterial")); }
		}
	}
	enum ESpeedTreeMeshType : ubyte
	{
		STMT_MinMinusOne = 0,
		STMT_Branches1 = 1,
		STMT_Branches2 = 2,
		STMT_Fronds = 3,
		STMT_LeafCards = 4,
		STMT_LeafMeshes = 5,
		STMT_Billboards = 6,
		STMT_Max = 7,
	}
	struct SpeedTreeStaticLight
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SpeedTreeComponent.SpeedTreeStaticLight")); }
		@property final auto ref
		{
			ShadowMap1D BillboardShadowMap() { mixin(MGPS("ShadowMap1D", 32)); }
			ShadowMap1D LeafCardShadowMap() { mixin(MGPS("ShadowMap1D", 28)); }
			ShadowMap1D LeafMeshShadowMap() { mixin(MGPS("ShadowMap1D", 24)); }
			ShadowMap1D FrondShadowMap() { mixin(MGPS("ShadowMap1D", 20)); }
			ShadowMap1D BranchShadowMap() { mixin(MGPS("ShadowMap1D", 16)); }
			UObject.Guid GuidVar() { mixin(MGPS("UObject.Guid", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight) StaticLights() { mixin(MGPC("ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight)", 544)); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC("EngineTypes.LightmassPrimitiveSettings", 640)); }
			UObject.Matrix RotationOnlyMatrix() { mixin(MGPC("UObject.Matrix", 576)); }
			EngineTypes.LightMapRef BillboardLightMap() { mixin(MGPC("EngineTypes.LightMapRef", 572)); }
			EngineTypes.LightMapRef LeafCardLightMap() { mixin(MGPC("EngineTypes.LightMapRef", 568)); }
			EngineTypes.LightMapRef LeafMeshLightMap() { mixin(MGPC("EngineTypes.LightMapRef", 564)); }
			EngineTypes.LightMapRef FrondLightMap() { mixin(MGPC("EngineTypes.LightMapRef", 560)); }
			EngineTypes.LightMapRef BranchLightMap() { mixin(MGPC("EngineTypes.LightMapRef", 556)); }
			Texture2D SpeedTreeIcon() { mixin(MGPC("Texture2D", 540)); }
			MaterialInterface BillboardMaterial() { mixin(MGPC("MaterialInterface", 536)); }
			MaterialInterface LeafMeshMaterial() { mixin(MGPC("MaterialInterface", 532)); }
			MaterialInterface LeafCardMaterial() { mixin(MGPC("MaterialInterface", 528)); }
			MaterialInterface FrondMaterial() { mixin(MGPC("MaterialInterface", 524)); }
			MaterialInterface Branch2Material() { mixin(MGPC("MaterialInterface", 520)); }
			MaterialInterface Branch1Material() { mixin(MGPC("MaterialInterface", 516)); }
			float LodLevelOverride() { mixin(MGPC("float", 512)); }
			float LodBillboardEnd() { mixin(MGPC("float", 508)); }
			float LodBillboardStart() { mixin(MGPC("float", 504)); }
			float Lod3DEnd() { mixin(MGPC("float", 500)); }
			float Lod3DStart() { mixin(MGPC("float", 496)); }
			SpeedTree SpeedTreeVar() { mixin(MGPC("SpeedTree", 488)); }
		}
		bool bUseBillboards() { mixin(MGBPC(492, 0x10)); }
		bool bUseBillboards(bool val) { mixin(MSBPC(492, 0x10)); }
		bool bUseFronds() { mixin(MGBPC(492, 0x8)); }
		bool bUseFronds(bool val) { mixin(MSBPC(492, 0x8)); }
		bool bUseBranches() { mixin(MGBPC(492, 0x4)); }
		bool bUseBranches(bool val) { mixin(MSBPC(492, 0x4)); }
		bool bUseLeafMeshes() { mixin(MGBPC(492, 0x2)); }
		bool bUseLeafMeshes(bool val) { mixin(MSBPC(492, 0x2)); }
		bool bUseLeafCards() { mixin(MGBPC(492, 0x1)); }
		bool bUseLeafCards(bool val) { mixin(MSBPC(492, 0x1)); }
	}
final:
	MaterialInterface GetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterial, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	void SetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType, MaterialInterface pMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		*cast(MaterialInterface*)&params[4] = pMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterial, params.ptr, cast(void*)0);
	}
}
