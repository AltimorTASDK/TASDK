module UnrealScript.Engine.DecalComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface DecalComponent : PrimitiveComponent
{
	enum EFilterMode : ubyte
	{
		FM_None = 0,
		FM_Ignore = 1,
		FM_Affect = 2,
		FM_MAX = 3,
	}
	enum EDecalTransform : ubyte
	{
		DecalTransform_OwnerAbsolute = 0,
		DecalTransform_OwnerRelative = 1,
		DecalTransform_SpawnRelative = 2,
		DecalTransform_MAX = 3,
	}
	struct DecalReceiver
	{
		public @property final auto ref UObject.Pointer RenderData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __RenderData[4];
	}
	public @property final auto ref ScriptArray!(int) HitNodeIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref ScriptArray!(DecalComponent.DecalReceiver) DecalReceivers() { return *cast(ScriptArray!(DecalComponent.DecalReceiver)*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref ScriptArray!(UObject.Pointer) StaticReceivers() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref ScriptArray!(UObject.Plane) Planes() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref ScriptArray!(Actor) Filter() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) ReceiverImages() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref Vector OriginalParentRelativeOrientationVec() { return *cast(Vector*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref Vector OriginalParentRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref Rotator ParentRelativeOrientation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref Vector ParentRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref DecalComponent.EFilterMode FilterMode() { return *cast(DecalComponent.EFilterMode*)(cast(size_t)cast(void*)this + 709); }
	public @property final auto ref DecalComponent.EDecalTransform DecalTransform() { return *cast(DecalComponent.EDecalTransform*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref UObject.Vector2D BlendRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref float BackfaceAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref int SortOrder() { return *cast(int*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref float SlopeScaleDepthBias() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref float DepthBias() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref int FracturedStaticMeshComponentIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref int HitLevelIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref int HitNodeIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref ScriptName HitBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 612); }
	public @property final bool bHasBeenAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x800) != 0; }
	public @property final bool bHasBeenAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x800; } return val; }
	public @property final bool bMovableDecal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x400) != 0; }
	public @property final bool bMovableDecal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x400; } return val; }
	public @property final bool bFlipBackfaceDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x200) != 0; }
	public @property final bool bFlipBackfaceDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x200; } return val; }
	public @property final bool bProjectOnTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x100) != 0; }
	public @property final bool bProjectOnTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x100; } return val; }
	public @property final bool bProjectOnSkeletalMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x80) != 0; }
	public @property final bool bProjectOnSkeletalMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x80; } return val; }
	public @property final bool bProjectOnStaticMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x40) != 0; }
	public @property final bool bProjectOnStaticMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x40; } return val; }
	public @property final bool bProjectOnBSP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x20) != 0; }
	public @property final bool bProjectOnBSP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x20; } return val; }
	public @property final bool bProjectOnHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x10) != 0; }
	public @property final bool bProjectOnHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x10; } return val; }
	public @property final bool bProjectOnBackfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x8) != 0; }
	public @property final bool bProjectOnBackfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x8; } return val; }
	public @property final bool m_bGameplayRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x4) != 0; }
	public @property final bool m_bGameplayRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x4; } return val; }
	public @property final bool bStaticDecal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x2) != 0; }
	public @property final bool bStaticDecal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x2; } return val; }
	public @property final bool bNoClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x1) != 0; }
	public @property final bool bNoClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x1; } return val; }
	public @property final auto ref Vector HitBinormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref Vector HitTangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref Rotator Orientation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float FieldOfView() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float DecalRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float OffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float OffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float TileY() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float TileX() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	// WARNING: Property 'DecalMaterial' has the same name as a defined type!
	final void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14100], cast(void*)0, cast(void*)0);
	}
	final void SetDecalMaterial(MaterialInterface NewDecalMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewDecalMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14101], params.ptr, cast(void*)0);
	}
	final MaterialInterface GetDecalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14103], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	final void SetGameplayRequired(bool bIsGameplayRelevant)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsGameplayRelevant;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14105], params.ptr, cast(void*)0);
	}
}
