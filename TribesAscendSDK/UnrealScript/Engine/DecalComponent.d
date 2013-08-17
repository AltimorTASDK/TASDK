module UnrealScript.Engine.DecalComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface DecalComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DecalComponent")()); }
	private static __gshared DecalComponent mDefaultProperties;
	@property final static DecalComponent DefaultProperties() { mixin(MGDPC!(DecalComponent, "DecalComponent Engine.Default__DecalComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetToDefaults;
			ScriptFunction mSetDecalMaterial;
			ScriptFunction mGetDecalMaterial;
			ScriptFunction mSetGameplayRequired;
		}
		public @property static final
		{
			ScriptFunction ResetToDefaults() { mixin(MGF!("mResetToDefaults", "Function Engine.DecalComponent.ResetToDefaults")()); }
			ScriptFunction SetDecalMaterial() { mixin(MGF!("mSetDecalMaterial", "Function Engine.DecalComponent.SetDecalMaterial")()); }
			ScriptFunction GetDecalMaterial() { mixin(MGF!("mGetDecalMaterial", "Function Engine.DecalComponent.GetDecalMaterial")()); }
			ScriptFunction SetGameplayRequired() { mixin(MGF!("mSetGameplayRequired", "Function Engine.DecalComponent.SetGameplayRequired")()); }
		}
	}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.DecalComponent.DecalReceiver")()); }
		@property final auto ref
		{
			UObject.Pointer RenderData() { mixin(MGPS!(UObject.Pointer, 4)()); }
			// WARNING: Property 'Component' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) HitNodeIndices() { mixin(MGPC!(ScriptArray!(int), 632)()); }
			ScriptArray!(DecalComponent.DecalReceiver) DecalReceivers() { mixin(MGPC!(ScriptArray!(DecalComponent.DecalReceiver), 644)()); }
			ScriptArray!(UObject.Pointer) StaticReceivers() { mixin(MGPC!(ScriptArray!(UObject.Pointer), 656)()); }
			ScriptArray!(UObject.Plane) Planes() { mixin(MGPC!(ScriptArray!(UObject.Plane), 672)()); }
			ScriptArray!(Actor) Filter() { mixin(MGPC!(ScriptArray!(Actor), 712)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ReceiverImages() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 724)()); }
			Vector OriginalParentRelativeOrientationVec() { mixin(MGPC!(Vector, 772)()); }
			Vector OriginalParentRelativeLocation() { mixin(MGPC!(Vector, 760)()); }
			Rotator ParentRelativeOrientation() { mixin(MGPC!(Rotator, 748)()); }
			Vector ParentRelativeLocation() { mixin(MGPC!(Vector, 736)()); }
			DecalComponent.EFilterMode FilterMode() { mixin(MGPC!(DecalComponent.EFilterMode, 709)()); }
			DecalComponent.EDecalTransform DecalTransform() { mixin(MGPC!(DecalComponent.EDecalTransform, 708)()); }
			UObject.Vector2D BlendRange() { mixin(MGPC!(UObject.Vector2D, 700)()); }
			float BackfaceAngle() { mixin(MGPC!(float, 696)()); }
			int SortOrder() { mixin(MGPC!(int, 692)()); }
			float SlopeScaleDepthBias() { mixin(MGPC!(float, 688)()); }
			float DepthBias() { mixin(MGPC!(float, 684)()); }
			UObject.Pointer ReleaseResourcesFence() { mixin(MGPC!(UObject.Pointer, 668)()); }
			int FracturedStaticMeshComponentIndex() { mixin(MGPC!(int, 628)()); }
			int HitLevelIndex() { mixin(MGPC!(int, 624)()); }
			int HitNodeIndex() { mixin(MGPC!(int, 620)()); }
			ScriptName HitBone() { mixin(MGPC!(ScriptName, 612)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'HitComponent'!
			Vector HitBinormal() { mixin(MGPC!(Vector, 592)()); }
			Vector HitTangent() { mixin(MGPC!(Vector, 580)()); }
			Vector HitNormal() { mixin(MGPC!(Vector, 568)()); }
			Vector HitLocation() { mixin(MGPC!(Vector, 556)()); }
			Rotator Orientation() { mixin(MGPC!(Rotator, 544)()); }
			Vector Location() { mixin(MGPC!(Vector, 532)()); }
			float FarPlane() { mixin(MGPC!(float, 528)()); }
			float NearPlane() { mixin(MGPC!(float, 524)()); }
			float FieldOfView() { mixin(MGPC!(float, 520)()); }
			float DecalRotation() { mixin(MGPC!(float, 516)()); }
			float OffsetY() { mixin(MGPC!(float, 512)()); }
			float OffsetX() { mixin(MGPC!(float, 508)()); }
			float TileY() { mixin(MGPC!(float, 504)()); }
			float TileX() { mixin(MGPC!(float, 500)()); }
			float Height() { mixin(MGPC!(float, 496)()); }
			float Width() { mixin(MGPC!(float, 492)()); }
			// WARNING: Property 'DecalMaterial' has the same name as a defined type!
		}
		bool bHasBeenAttached() { mixin(MGBPC!(604, 0x800)()); }
		bool bHasBeenAttached(bool val) { mixin(MSBPC!(604, 0x800)()); }
		bool bMovableDecal() { mixin(MGBPC!(604, 0x400)()); }
		bool bMovableDecal(bool val) { mixin(MSBPC!(604, 0x400)()); }
		bool bFlipBackfaceDirection() { mixin(MGBPC!(604, 0x200)()); }
		bool bFlipBackfaceDirection(bool val) { mixin(MSBPC!(604, 0x200)()); }
		bool bProjectOnTerrain() { mixin(MGBPC!(604, 0x100)()); }
		bool bProjectOnTerrain(bool val) { mixin(MSBPC!(604, 0x100)()); }
		bool bProjectOnSkeletalMeshes() { mixin(MGBPC!(604, 0x80)()); }
		bool bProjectOnSkeletalMeshes(bool val) { mixin(MSBPC!(604, 0x80)()); }
		bool bProjectOnStaticMeshes() { mixin(MGBPC!(604, 0x40)()); }
		bool bProjectOnStaticMeshes(bool val) { mixin(MSBPC!(604, 0x40)()); }
		bool bProjectOnBSP() { mixin(MGBPC!(604, 0x20)()); }
		bool bProjectOnBSP(bool val) { mixin(MSBPC!(604, 0x20)()); }
		bool bProjectOnHidden() { mixin(MGBPC!(604, 0x10)()); }
		bool bProjectOnHidden(bool val) { mixin(MSBPC!(604, 0x10)()); }
		bool bProjectOnBackfaces() { mixin(MGBPC!(604, 0x8)()); }
		bool bProjectOnBackfaces(bool val) { mixin(MSBPC!(604, 0x8)()); }
		bool m_bGameplayRequired() { mixin(MGBPC!(604, 0x4)()); }
		bool m_bGameplayRequired(bool val) { mixin(MSBPC!(604, 0x4)()); }
		bool bStaticDecal() { mixin(MGBPC!(604, 0x2)()); }
		bool bStaticDecal(bool val) { mixin(MSBPC!(604, 0x2)()); }
		bool bNoClip() { mixin(MGBPC!(604, 0x1)()); }
		bool bNoClip(bool val) { mixin(MSBPC!(604, 0x1)()); }
	}
final:
	void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetToDefaults, cast(void*)0, cast(void*)0);
	}
	void SetDecalMaterial(MaterialInterface NewDecalMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewDecalMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDecalMaterial, params.ptr, cast(void*)0);
	}
	MaterialInterface GetDecalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDecalMaterial, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	void SetGameplayRequired(bool bIsGameplayRelevant)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsGameplayRelevant;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGameplayRequired, params.ptr, cast(void*)0);
	}
}
