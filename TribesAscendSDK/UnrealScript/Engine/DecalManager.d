module UnrealScript.Engine.DecalManager;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface DecalManager : Actor
{
	struct ActiveDecalInfo
	{
		public @property final auto ref float LifetimeRemaining() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __LifetimeRemaining[4];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) PoolDecals() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref ScriptArray!(DecalManager.ActiveDecalInfo) ActiveDecals() { return *cast(ScriptArray!(DecalManager.ActiveDecalInfo)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref UObject.Vector2D DecalBlendRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float DecalDepthBias() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float DecalLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int MaxActiveDecals() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	final bool AreDynamicDecalsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14123], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void DecalFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Decal)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Decal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14125], params.ptr, cast(void*)0);
	}
	final bool CanSpawnDecals()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14127], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetDecalParameters(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* TheDecal, MaterialInterface DecalMaterial, Vector DecalLocation, Rotator DecalOrientation, float Width, float Height, float Thickness, bool bNoClip, float DecalRotation, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, bool bProjectOnTerrain, bool bProjectOnSkeletalMeshes, ScriptName HitBone, int HitNodeIndex, int HitLevelIndex, int InFracturedStaticMeshComponentIndex, float DepthBias, UObject.Vector2D BlendRange)
	{
		ubyte params[96];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = TheDecal;
		*cast(MaterialInterface*)&params[4] = DecalMaterial;
		*cast(Vector*)&params[8] = DecalLocation;
		*cast(Rotator*)&params[20] = DecalOrientation;
		*cast(float*)&params[32] = Width;
		*cast(float*)&params[36] = Height;
		*cast(float*)&params[40] = Thickness;
		*cast(bool*)&params[44] = bNoClip;
		*cast(float*)&params[48] = DecalRotation;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[52] = HitComponent;
		*cast(bool*)&params[56] = bProjectOnTerrain;
		*cast(bool*)&params[60] = bProjectOnSkeletalMeshes;
		*cast(ScriptName*)&params[64] = HitBone;
		*cast(int*)&params[72] = HitNodeIndex;
		*cast(int*)&params[76] = HitLevelIndex;
		*cast(int*)&params[80] = InFracturedStaticMeshComponentIndex;
		*cast(float*)&params[84] = DepthBias;
		*cast(UObject.Vector2D*)&params[88] = BlendRange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14129], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* GetPooledComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14148], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SpawnDecal(MaterialInterface DecalMaterial, Vector DecalLocation, Rotator DecalOrientation, float Width, float Height, float Thickness, bool bNoClip, float DecalRotation, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, bool bProjectOnTerrain, bool bProjectOnSkeletalMeshes, ScriptName HitBone, int HitNodeIndex, int HitLevelIndex, float InDecalLifeSpan, int InFracturedStaticMeshComponentIndex, float InDepthBias, UObject.Vector2D InBlendRange)
	{
		ubyte params[100];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = DecalMaterial;
		*cast(Vector*)&params[4] = DecalLocation;
		*cast(Rotator*)&params[16] = DecalOrientation;
		*cast(float*)&params[28] = Width;
		*cast(float*)&params[32] = Height;
		*cast(float*)&params[36] = Thickness;
		*cast(bool*)&params[40] = bNoClip;
		*cast(float*)&params[44] = DecalRotation;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[48] = HitComponent;
		*cast(bool*)&params[52] = bProjectOnTerrain;
		*cast(bool*)&params[56] = bProjectOnSkeletalMeshes;
		*cast(ScriptName*)&params[60] = HitBone;
		*cast(int*)&params[68] = HitNodeIndex;
		*cast(int*)&params[72] = HitLevelIndex;
		*cast(float*)&params[76] = InDecalLifeSpan;
		*cast(int*)&params[80] = InFracturedStaticMeshComponentIndex;
		*cast(float*)&params[84] = InDepthBias;
		*cast(UObject.Vector2D*)&params[88] = InBlendRange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14152], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[96];
	}
}
