module UnrealScript.Engine.StaticMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.StaticMeshComponent")()); }
	private static __gshared StaticMeshComponent mDefaultProperties;
	@property final static StaticMeshComponent DefaultProperties() { mixin(MGDPC!(StaticMeshComponent, "StaticMeshComponent Engine.Default__StaticMeshComponent")()); }
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
			ScriptFunction CanBecomeDynamic() { mixin(MGF!("mCanBecomeDynamic", "Function Engine.StaticMeshComponent.CanBecomeDynamic")()); }
			ScriptFunction SetStaticMesh() { mixin(MGF!("mSetStaticMesh", "Function Engine.StaticMeshComponent.SetStaticMesh")()); }
			ScriptFunction DisableRBCollisionWithSMC() { mixin(MGF!("mDisableRBCollisionWithSMC", "Function Engine.StaticMeshComponent.DisableRBCollisionWithSMC")()); }
			ScriptFunction SetForceStaticDecals() { mixin(MGF!("mSetForceStaticDecals", "Function Engine.StaticMeshComponent.SetForceStaticDecals")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.StaticMeshComponent.StaticMeshComponentLODInfo")()); }
		@property final auto ref
		{
			ScriptArray!(ShadowMap2D) ShadowMaps() { mixin(MGPS!("ScriptArray!(ShadowMap2D)", 0)()); }
			ScriptArray!(UObject) ShadowVertexBuffers() { mixin(MGPS!("ScriptArray!(UObject)", 12)()); }
			ScriptArray!(Vector) VertexColorPositions() { mixin(MGPS!("ScriptArray!(Vector)", 32)()); }
			UObject.Pointer OverrideVertexColors() { mixin(MGPS!("UObject.Pointer", 28)()); }
			UObject.Pointer LightMap() { mixin(MGPS!("UObject.Pointer", 24)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Guid) IrrelevantLights() { mixin(MGPC!("ScriptArray!(UObject.Guid)", 552)()); }
			ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo) LODData() { mixin(MGPC!("ScriptArray!(StaticMeshComponent.StaticMeshComponentLODInfo)", 564)()); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC!("EngineTypes.LightmassPrimitiveSettings", 580)()); }
			int VertexPositionVersionNumber() { mixin(MGPC!("int", 576)()); }
			StaticMeshComponent.ELightmapModificationFunction SimpleLightmapModificationFunction() { mixin(MGPC!("StaticMeshComponent.ELightmapModificationFunction", 544)()); }
			int ForcedLodModel() { mixin(MGPC!("int", 500)()); }
			Texture SimpleLightmapModificationTexture() { mixin(MGPC!("Texture", 540)()); }
			int SubDivisionStepSize() { mixin(MGPC!("int", 532)()); }
			float OverriddenLODMaxRange() { mixin(MGPC!("float", 528)()); }
			int OverriddenLightMapRes() { mixin(MGPC!("int", 524)()); }
			int OverriddenLightMapResolution() { mixin(MGPC!("int", 520)()); }
			UObject.Color WireframeColor() { mixin(MGPC!("UObject.Color", 512)()); }
			// WARNING: Property 'StaticMesh' has the same name as a defined type!
			int PreviousLODLevel() { mixin(MGPC!("int", 504)()); }
		}
		bool bNeverBecomeDynamic() { mixin(MGBPC!(548, 0x1)()); }
		bool bNeverBecomeDynamic(bool val) { mixin(MSBPC!(548, 0x1)()); }
		bool bUseSimpleLightmapModifications() { mixin(MGBPC!(536, 0x8)()); }
		bool bUseSimpleLightmapModifications(bool val) { mixin(MSBPC!(536, 0x8)()); }
		bool bCanHighlightSelectedSections() { mixin(MGBPC!(536, 0x4)()); }
		bool bCanHighlightSelectedSections(bool val) { mixin(MSBPC!(536, 0x4)()); }
		bool bForceStaticDecals() { mixin(MGBPC!(536, 0x2)()); }
		bool bForceStaticDecals(bool val) { mixin(MSBPC!(536, 0x2)()); }
		bool bUseSubDivisions() { mixin(MGBPC!(536, 0x1)()); }
		bool bUseSubDivisions(bool val) { mixin(MSBPC!(536, 0x1)()); }
		bool bOverrideLightMapRes() { mixin(MGBPC!(516, 0x4)()); }
		bool bOverrideLightMapRes(bool val) { mixin(MSBPC!(516, 0x4)()); }
		bool bOverrideLightMapResolution() { mixin(MGBPC!(516, 0x2)()); }
		bool bOverrideLightMapResolution(bool val) { mixin(MSBPC!(516, 0x2)()); }
		bool bIgnoreInstanceForTextureStreaming() { mixin(MGBPC!(516, 0x1)()); }
		bool bIgnoreInstanceForTextureStreaming(bool val) { mixin(MSBPC!(516, 0x1)()); }
	}
final:
	bool CanBecomeDynamic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBecomeDynamic, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetStaticMesh(StaticMesh NewMesh, bool* bForce = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		if (bForce !is null)
			*cast(bool*)&params[4] = *bForce;
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
