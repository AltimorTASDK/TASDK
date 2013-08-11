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
	enum ELightmapModificationFunction : ubyte
	{
		MLMF_Modulate = 0,
		MLMF_ModulateAlpha = 1,
		MLMF_MAX = 2,
	}
	struct StaticMeshComponentLODInfo
	{
		public @property final auto ref ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)&this + 0); }
		private ubyte __ShadowMaps[12];
		public @property final auto ref ScriptArray!(UObject) ShadowVertexBuffers() { return *cast(ScriptArray!(UObject)*)(cast(size_t)&this + 12); }
		private ubyte __ShadowVertexBuffers[12];
		public @property final auto ref ScriptArray!(Vector) VertexColorPositions() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 32); }
		private ubyte __VertexColorPositions[12];
		public @property final auto ref UObject.Pointer OverrideVertexColors() { return *cast(UObject.Pointer*)(cast(size_t)&this + 28); }
		private ubyte __OverrideVertexColors[4];
		public @property final auto ref UObject.Pointer LightMap() { return *cast(UObject.Pointer*)(cast(size_t)&this + 24); }
		private ubyte __LightMap[4];
	}
	public @property final auto ref ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo) LODData() { return *cast(ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo)*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref int VertexPositionVersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
	public @property final bool bNeverBecomeDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 548) & 0x1) != 0; }
	public @property final bool bNeverBecomeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 548) &= ~0x1; } return val; }
	public @property final auto ref StaticMeshComponent.ELightmapModificationFunction SimpleLightmapModificationFunction() { return *cast(StaticMeshComponent.ELightmapModificationFunction*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int ForcedLodModel() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref Texture SimpleLightmapModificationTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 540); }
	public @property final bool bUseSimpleLightmapModifications() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x8) != 0; }
	public @property final bool bUseSimpleLightmapModifications(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x8; } return val; }
	public @property final bool bCanHighlightSelectedSections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x4) != 0; }
	public @property final bool bCanHighlightSelectedSections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x4; } return val; }
	public @property final bool bForceStaticDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x2) != 0; }
	public @property final bool bForceStaticDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x2; } return val; }
	public @property final bool bUseSubDivisions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x1) != 0; }
	public @property final bool bUseSubDivisions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x1; } return val; }
	public @property final auto ref int SubDivisionStepSize() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float OverriddenLODMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref int OverriddenLightMapRes() { return *cast(int*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref int OverriddenLightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
	public @property final bool bOverrideLightMapRes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
	public @property final bool bOverrideLightMapRes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
	public @property final bool bOverrideLightMapResolution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
	public @property final bool bOverrideLightMapResolution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
	public @property final bool bIgnoreInstanceForTextureStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
	public @property final bool bIgnoreInstanceForTextureStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 512); }
	// WARNING: Property 'StaticMesh' has the same name as a defined type!
	public @property final auto ref int PreviousLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
	final bool CanBecomeDynamic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4080], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SetStaticMesh(StaticMesh NewMesh, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12100], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void DisableRBCollisionWithSMC(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherSMC, bool bDisabled)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = OtherSMC;
		*cast(bool*)&params[4] = bDisabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12104], params.ptr, cast(void*)0);
	}
	final void SetForceStaticDecals(bool bInForceStaticDecals)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInForceStaticDecals;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12107], params.ptr, cast(void*)0);
	}
}
