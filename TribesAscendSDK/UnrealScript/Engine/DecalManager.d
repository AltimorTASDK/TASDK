module UnrealScript.Engine.DecalManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface DecalManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DecalManager")()); }
	private static __gshared DecalManager mDefaultProperties;
	@property final static DecalManager DefaultProperties() { mixin(MGDPC!(DecalManager, "DecalManager Engine.Default__DecalManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAreDynamicDecalsEnabled;
			ScriptFunction mDecalFinished;
			ScriptFunction mCanSpawnDecals;
			ScriptFunction mSetDecalParameters;
			ScriptFunction mGetPooledComponent;
			ScriptFunction mSpawnDecal;
		}
		public @property static final
		{
			ScriptFunction AreDynamicDecalsEnabled() { mixin(MGF!("mAreDynamicDecalsEnabled", "Function Engine.DecalManager.AreDynamicDecalsEnabled")()); }
			ScriptFunction DecalFinished() { mixin(MGF!("mDecalFinished", "Function Engine.DecalManager.DecalFinished")()); }
			ScriptFunction CanSpawnDecals() { mixin(MGF!("mCanSpawnDecals", "Function Engine.DecalManager.CanSpawnDecals")()); }
			ScriptFunction SetDecalParameters() { mixin(MGF!("mSetDecalParameters", "Function Engine.DecalManager.SetDecalParameters")()); }
			ScriptFunction GetPooledComponent() { mixin(MGF!("mGetPooledComponent", "Function Engine.DecalManager.GetPooledComponent")()); }
			ScriptFunction SpawnDecal() { mixin(MGF!("mSpawnDecal", "Function Engine.DecalManager.SpawnDecal")()); }
		}
	}
	struct ActiveDecalInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.DecalManager.ActiveDecalInfo")()); }
		@property final auto ref
		{
			float LifetimeRemaining() { mixin(MGPS!("float", 4)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Decal'!
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) PoolDecals() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 480)()); }
		ScriptArray!(DecalManager.ActiveDecalInfo) ActiveDecals() { mixin(MGPC!("ScriptArray!(DecalManager.ActiveDecalInfo)", 512)()); }
		UObject.Vector2D DecalBlendRange() { mixin(MGPC!("UObject.Vector2D", 504)()); }
		float DecalDepthBias() { mixin(MGPC!("float", 500)()); }
		float DecalLifeSpan() { mixin(MGPC!("float", 496)()); }
		int MaxActiveDecals() { mixin(MGPC!("int", 492)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DecalTemplate'!
	}
final:
	static bool AreDynamicDecalsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.AreDynamicDecalsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DecalFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* Decal)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = Decal;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecalFinished, params.ptr, cast(void*)0);
	}
	bool CanSpawnDecals()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSpawnDecals, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static void SetDecalParameters(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* TheDecal, MaterialInterface pDecalMaterial, Vector DecalLocation, Rotator DecalOrientation, float Width, float Height, float Thickness, bool bNoClip, float DecalRotation, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, bool bProjectOnTerrain, bool bProjectOnSkeletalMeshes, ScriptName HitBone, int HitNodeIndex, int HitLevelIndex, int InFracturedStaticMeshComponentIndex, float DepthBias, UObject.Vector2D BlendRange)
	{
		ubyte params[96];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = TheDecal;
		*cast(MaterialInterface*)&params[4] = pDecalMaterial;
		*cast(Vector*)&params[8] = DecalLocation;
		*cast(Rotator*)&params[20] = DecalOrientation;
		*cast(float*)&params[32] = Width;
		*cast(float*)&params[36] = Height;
		*cast(float*)&params[40] = Thickness;
		*cast(bool*)&params[44] = bNoClip;
		*cast(float*)&params[48] = DecalRotation;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[52] = HitComponent;
		*cast(bool*)&params[56] = bProjectOnTerrain;
		*cast(bool*)&params[60] = bProjectOnSkeletalMeshes;
		*cast(ScriptName*)&params[64] = HitBone;
		*cast(int*)&params[72] = HitNodeIndex;
		*cast(int*)&params[76] = HitLevelIndex;
		*cast(int*)&params[80] = InFracturedStaticMeshComponentIndex;
		*cast(float*)&params[84] = DepthBias;
		*cast(UObject.Vector2D*)&params[88] = BlendRange;
		StaticClass.ProcessEvent(Functions.SetDecalParameters, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetPooledComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPooledComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnDecal(MaterialInterface pDecalMaterial, Vector DecalLocation, Rotator DecalOrientation, float Width, float Height, float Thickness, bool bNoClip, float* DecalRotation = null, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** HitComponent = null, bool* bProjectOnTerrain = null, bool* bProjectOnSkeletalMeshes = null, ScriptName* HitBone = null, int* HitNodeIndex = null, int* HitLevelIndex = null, float* InDecalLifeSpan = null, int* InFracturedStaticMeshComponentIndex = null, float* InDepthBias = null, UObject.Vector2D* InBlendRange = null)
	{
		ubyte params[100];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = pDecalMaterial;
		*cast(Vector*)&params[4] = DecalLocation;
		*cast(Rotator*)&params[16] = DecalOrientation;
		*cast(float*)&params[28] = Width;
		*cast(float*)&params[32] = Height;
		*cast(float*)&params[36] = Thickness;
		*cast(bool*)&params[40] = bNoClip;
		if (DecalRotation !is null)
			*cast(float*)&params[44] = *DecalRotation;
		if (HitComponent !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[48] = *HitComponent;
		if (bProjectOnTerrain !is null)
			*cast(bool*)&params[52] = *bProjectOnTerrain;
		if (bProjectOnSkeletalMeshes !is null)
			*cast(bool*)&params[56] = *bProjectOnSkeletalMeshes;
		if (HitBone !is null)
			*cast(ScriptName*)&params[60] = *HitBone;
		if (HitNodeIndex !is null)
			*cast(int*)&params[68] = *HitNodeIndex;
		if (HitLevelIndex !is null)
			*cast(int*)&params[72] = *HitLevelIndex;
		if (InDecalLifeSpan !is null)
			*cast(float*)&params[76] = *InDecalLifeSpan;
		if (InFracturedStaticMeshComponentIndex !is null)
			*cast(int*)&params[80] = *InFracturedStaticMeshComponentIndex;
		if (InDepthBias !is null)
			*cast(float*)&params[84] = *InDepthBias;
		if (InBlendRange !is null)
			*cast(UObject.Vector2D*)&params[88] = *InBlendRange;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDecal, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[96];
	}
}
