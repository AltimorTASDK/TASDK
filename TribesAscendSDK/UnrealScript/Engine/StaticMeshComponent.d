module UnrealScript.Engine.StaticMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.MeshComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface StaticMeshComponent : MeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanBecomeDynamic;
			ScriptFunction mSetStaticMesh;
			ScriptFunction mDisableRBCollisionWithSMC;
			ScriptFunction mSetForceStaticDecals;
		}
		public @property static final
		{
			ScriptFunction CanBecomeDynamic() { return mCanBecomeDynamic ? mCanBecomeDynamic : (mCanBecomeDynamic = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshComponent.CanBecomeDynamic")); }
			ScriptFunction SetStaticMesh() { return mSetStaticMesh ? mSetStaticMesh : (mSetStaticMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshComponent.SetStaticMesh")); }
			ScriptFunction DisableRBCollisionWithSMC() { return mDisableRBCollisionWithSMC ? mDisableRBCollisionWithSMC : (mDisableRBCollisionWithSMC = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshComponent.DisableRBCollisionWithSMC")); }
			ScriptFunction SetForceStaticDecals() { return mSetForceStaticDecals ? mSetForceStaticDecals : (mSetForceStaticDecals = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshComponent.SetForceStaticDecals")); }
		}
	}
	enum ELightmapModificationFunction : ubyte
	{
		MLMF_Modulate = 0,
		MLMF_ModulateAlpha = 1,
		MLMF_MAX = 2,
	}
	struct StaticMeshComponentLODInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.StaticMeshComponent.StaticMeshComponentLODInfo")); }
		@property final auto ref
		{
			ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)&this + 0); }
			ScriptArray!(UObject) ShadowVertexBuffers() { return *cast(ScriptArray!(UObject)*)(cast(size_t)&this + 12); }
			ScriptArray!(Vector) VertexColorPositions() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 32); }
			UObject.Pointer OverrideVertexColors() { return *cast(UObject.Pointer*)(cast(size_t)&this + 28); }
			UObject.Pointer LightMap() { return *cast(UObject.Pointer*)(cast(size_t)&this + 24); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 552); }
			ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo) LODData() { return *cast(ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo)*)(cast(size_t)cast(void*)this + 564); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 580); }
			int VertexPositionVersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
			StaticMeshComponent.ELightmapModificationFunction SimpleLightmapModificationFunction() { return *cast(StaticMeshComponent.ELightmapModificationFunction*)(cast(size_t)cast(void*)this + 544); }
			int ForcedLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			Texture SimpleLightmapModificationTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 540); }
			int SubDivisionStepSize() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			float OverriddenLODMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			int OverriddenLightMapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 524); }
			int OverriddenLightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
			UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 512); }
			// WARNING: Property 'StaticMesh' has the same name as a defined type!
			int PreviousLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
		}
		bool bNeverBecomeDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 548) & 0x1) != 0; }
		bool bNeverBecomeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 548) &= ~0x1; } return val; }
		bool bUseSimpleLightmapModifications() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x8) != 0; }
		bool bUseSimpleLightmapModifications(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x8; } return val; }
		bool bCanHighlightSelectedSections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x4) != 0; }
		bool bCanHighlightSelectedSections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x4; } return val; }
		bool bForceStaticDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x2) != 0; }
		bool bForceStaticDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x2; } return val; }
		bool bUseSubDivisions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x1) != 0; }
		bool bUseSubDivisions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x1; } return val; }
		bool bOverrideLightMapRes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
		bool bOverrideLightMapRes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
		bool bOverrideLightMapResolution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
		bool bOverrideLightMapResolution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
		bool bIgnoreInstanceForTextureStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
		bool bIgnoreInstanceForTextureStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	}
final:
	bool CanBecomeDynamic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBecomeDynamic, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetStaticMesh(StaticMesh NewMesh, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStaticMesh, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DisableRBCollisionWithSMC(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherSMC, bool bDisabled)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = OtherSMC;
		*cast(bool*)&params[4] = bDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableRBCollisionWithSMC, params.ptr, cast(void*)0);
	}
	void SetForceStaticDecals(bool bInForceStaticDecals)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInForceStaticDecals;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceStaticDecals, params.ptr, cast(void*)0);
	}
}
