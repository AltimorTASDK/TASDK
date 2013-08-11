module UnrealScript.Engine.SpeedTreeComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.SpeedTree;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ShadowMap1D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface SpeedTreeComponent : PrimitiveComponent
{
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
		public @property final auto ref ShadowMap1D BillboardShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 32); }
		private ubyte __BillboardShadowMap[4];
		public @property final auto ref ShadowMap1D LeafCardShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 28); }
		private ubyte __LeafCardShadowMap[4];
		public @property final auto ref ShadowMap1D LeafMeshShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 24); }
		private ubyte __LeafMeshShadowMap[4];
		public @property final auto ref ShadowMap1D FrondShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 20); }
		private ubyte __FrondShadowMap[4];
		public @property final auto ref ShadowMap1D BranchShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 16); }
		private ubyte __BranchShadowMap[4];
		// WARNING: Property 'Guid' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight) StaticLights() { return *cast(ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref UObject.Matrix RotationOnlyMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref EngineTypes.LightMapRef BillboardLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref EngineTypes.LightMapRef LeafCardLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref EngineTypes.LightMapRef LeafMeshLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref EngineTypes.LightMapRef FrondLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref EngineTypes.LightMapRef BranchLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref Texture2D SpeedTreeIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref MaterialInterface BillboardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref MaterialInterface LeafMeshMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref MaterialInterface LeafCardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref MaterialInterface FrondMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref MaterialInterface Branch2Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref MaterialInterface Branch1Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float LodLevelOverride() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float LodBillboardEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float LodBillboardStart() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float Lod3DEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float Lod3DStart() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bUseBillboards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x10) != 0; }
	public @property final bool bUseBillboards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x10; } return val; }
	public @property final bool bUseFronds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x8) != 0; }
	public @property final bool bUseFronds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x8; } return val; }
	public @property final bool bUseBranches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
	public @property final bool bUseBranches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
	public @property final bool bUseLeafMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
	public @property final bool bUseLeafMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
	public @property final bool bUseLeafCards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bUseLeafCards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	// WARNING: Property 'SpeedTree' has the same name as a defined type!
	final MaterialInterface GetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27073], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	final void SetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType, MaterialInterface Material)
	{
		ubyte params[5];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		*cast(MaterialInterface*)&params[4] = Material;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27076], params.ptr, cast(void*)0);
	}
}
