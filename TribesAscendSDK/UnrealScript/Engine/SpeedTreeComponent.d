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
public extern(D):
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
		@property final auto ref
		{
			ShadowMap1D BillboardShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 32); }
			ShadowMap1D LeafCardShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 28); }
			ShadowMap1D LeafMeshShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 24); }
			ShadowMap1D FrondShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 20); }
			ShadowMap1D BranchShadowMap() { return *cast(ShadowMap1D*)(cast(size_t)&this + 16); }
			// WARNING: Property 'Guid' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight) StaticLights() { return *cast(ScriptArray!(SpeedTreeComponent.SpeedTreeStaticLight)*)(cast(size_t)cast(void*)this + 544); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 640); }
			UObject.Matrix RotationOnlyMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 576); }
			EngineTypes.LightMapRef BillboardLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 572); }
			EngineTypes.LightMapRef LeafCardLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 568); }
			EngineTypes.LightMapRef LeafMeshLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 564); }
			EngineTypes.LightMapRef FrondLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 560); }
			EngineTypes.LightMapRef BranchLightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 556); }
			Texture2D SpeedTreeIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 540); }
			MaterialInterface BillboardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 536); }
			MaterialInterface LeafMeshMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 532); }
			MaterialInterface LeafCardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 528); }
			MaterialInterface FrondMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 524); }
			MaterialInterface Branch2Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 520); }
			MaterialInterface Branch1Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 516); }
			float LodLevelOverride() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float LodBillboardEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float LodBillboardStart() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float Lod3DEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float Lod3DStart() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			// WARNING: Property 'SpeedTree' has the same name as a defined type!
		}
		bool bUseBillboards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x10) != 0; }
		bool bUseBillboards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x10; } return val; }
		bool bUseFronds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x8) != 0; }
		bool bUseFronds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x8; } return val; }
		bool bUseBranches() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
		bool bUseBranches(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
		bool bUseLeafMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
		bool bUseLeafMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
		bool bUseLeafCards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bUseLeafCards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	}
final:
	MaterialInterface GetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27073], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	void SetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType, MaterialInterface pMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SpeedTreeComponent.ESpeedTreeMeshType*)params.ptr = MeshType;
		*cast(MaterialInterface*)&params[4] = pMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27076], params.ptr, cast(void*)0);
	}
}
