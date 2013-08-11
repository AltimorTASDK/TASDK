module UnrealScript.Engine.DecalComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface DecalComponent : PrimitiveComponent
{
public extern(D):
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
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref UObject.Pointer RenderData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) HitNodeIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 632); }
			ScriptArray!(DecalComponent.DecalReceiver) DecalReceivers() { return *cast(ScriptArray!(DecalComponent.DecalReceiver)*)(cast(size_t)cast(void*)this + 644); }
			ScriptArray!(UObject.Pointer) StaticReceivers() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 656); }
			ScriptArray!(UObject.Plane) Planes() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)cast(void*)this + 672); }
			ScriptArray!(Actor) Filter() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 712); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ReceiverImages() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 724); }
			Vector OriginalParentRelativeOrientationVec() { return *cast(Vector*)(cast(size_t)cast(void*)this + 772); }
			Vector OriginalParentRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 760); }
			Rotator ParentRelativeOrientation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 748); }
			Vector ParentRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 736); }
			DecalComponent.EFilterMode FilterMode() { return *cast(DecalComponent.EFilterMode*)(cast(size_t)cast(void*)this + 709); }
			DecalComponent.EDecalTransform DecalTransform() { return *cast(DecalComponent.EDecalTransform*)(cast(size_t)cast(void*)this + 708); }
			UObject.Vector2D BlendRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 700); }
			float BackfaceAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			int SortOrder() { return *cast(int*)(cast(size_t)cast(void*)this + 692); }
			float SlopeScaleDepthBias() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float DepthBias() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 668); }
			int FracturedStaticMeshComponentIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
			int HitLevelIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
			int HitNodeIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 620); }
			ScriptName HitBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 612); }
			Vector HitBinormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
			Vector HitTangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
			Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
			Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
			Rotator Orientation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 544); }
			Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 532); }
			float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float FieldOfView() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float DecalRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float OffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float OffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float TileY() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float TileX() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			// WARNING: Property 'DecalMaterial' has the same name as a defined type!
		}
		bool bHasBeenAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x800) != 0; }
		bool bHasBeenAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x800; } return val; }
		bool bMovableDecal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x400) != 0; }
		bool bMovableDecal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x400; } return val; }
		bool bFlipBackfaceDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x200) != 0; }
		bool bFlipBackfaceDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x200; } return val; }
		bool bProjectOnTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x100) != 0; }
		bool bProjectOnTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x100; } return val; }
		bool bProjectOnSkeletalMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x80) != 0; }
		bool bProjectOnSkeletalMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x80; } return val; }
		bool bProjectOnStaticMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x40) != 0; }
		bool bProjectOnStaticMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x40; } return val; }
		bool bProjectOnBSP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x20) != 0; }
		bool bProjectOnBSP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x20; } return val; }
		bool bProjectOnHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x10) != 0; }
		bool bProjectOnHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x10; } return val; }
		bool bProjectOnBackfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x8) != 0; }
		bool bProjectOnBackfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x8; } return val; }
		bool m_bGameplayRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x4) != 0; }
		bool m_bGameplayRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x4; } return val; }
		bool bStaticDecal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x2) != 0; }
		bool bStaticDecal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x2; } return val; }
		bool bNoClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x1) != 0; }
		bool bNoClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x1; } return val; }
	}
final:
	void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14100], cast(void*)0, cast(void*)0);
	}
	void SetDecalMaterial(MaterialInterface NewDecalMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewDecalMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14101], params.ptr, cast(void*)0);
	}
	MaterialInterface GetDecalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14103], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	void SetGameplayRequired(bool bIsGameplayRelevant)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsGameplayRelevant;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14105], params.ptr, cast(void*)0);
	}
}
