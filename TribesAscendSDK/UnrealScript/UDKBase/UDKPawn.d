module UnrealScript.UDKBase.UDKPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SkelControlLimb;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.SkelControlFootPlacement;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.Engine.SoundCue;

extern(C++) interface UDKPawn : GamePawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKPawn")()); }
	private static __gshared UDKPawn mDefaultProperties;
	@property final static UDKPawn DefaultProperties() { mixin(MGDPC!(UDKPawn, "UDKPawn UDKBase.Default__UDKPawn")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBoundingCylinder;
			ScriptFunction mRestorePreRagdollCollisionComponent;
			ScriptFunction mEnsureOverlayComponentLast;
			ScriptFunction mGetTargetLocation;
			ScriptFunction mIsInvisible;
			ScriptFunction mHoldGameObject;
			ScriptFunction mStoppedFalling;
			ScriptFunction mEndCrouch;
			ScriptFunction mStartCrouch;
			ScriptFunction mSuggestJumpVelocity;
			ScriptFunction mSetHUDLocation;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mSetWeaponAttachmentVisibility;
			ScriptFunction mSetHandIKEnabled;
			ScriptFunction mStartFeignDeathRecoveryAnim;
			ScriptFunction mTakeHitBlendedOut;
			ScriptFunction mUpdateEyeHeight;
			ScriptFunction mStuckFalling;
		}
		public @property static final
		{
			ScriptFunction GetBoundingCylinder() { mixin(MGF!("mGetBoundingCylinder", "Function UDKBase.UDKPawn.GetBoundingCylinder")()); }
			ScriptFunction RestorePreRagdollCollisionComponent() { mixin(MGF!("mRestorePreRagdollCollisionComponent", "Function UDKBase.UDKPawn.RestorePreRagdollCollisionComponent")()); }
			ScriptFunction EnsureOverlayComponentLast() { mixin(MGF!("mEnsureOverlayComponentLast", "Function UDKBase.UDKPawn.EnsureOverlayComponentLast")()); }
			ScriptFunction GetTargetLocation() { mixin(MGF!("mGetTargetLocation", "Function UDKBase.UDKPawn.GetTargetLocation")()); }
			ScriptFunction IsInvisible() { mixin(MGF!("mIsInvisible", "Function UDKBase.UDKPawn.IsInvisible")()); }
			ScriptFunction HoldGameObject() { mixin(MGF!("mHoldGameObject", "Function UDKBase.UDKPawn.HoldGameObject")()); }
			ScriptFunction StoppedFalling() { mixin(MGF!("mStoppedFalling", "Function UDKBase.UDKPawn.StoppedFalling")()); }
			ScriptFunction EndCrouch() { mixin(MGF!("mEndCrouch", "Function UDKBase.UDKPawn.EndCrouch")()); }
			ScriptFunction StartCrouch() { mixin(MGF!("mStartCrouch", "Function UDKBase.UDKPawn.StartCrouch")()); }
			ScriptFunction SuggestJumpVelocity() { mixin(MGF!("mSuggestJumpVelocity", "Function UDKBase.UDKPawn.SuggestJumpVelocity")()); }
			ScriptFunction SetHUDLocation() { mixin(MGF!("mSetHUDLocation", "Function UDKBase.UDKPawn.SetHUDLocation")()); }
			ScriptFunction NativePostRenderFor() { mixin(MGF!("mNativePostRenderFor", "Function UDKBase.UDKPawn.NativePostRenderFor")()); }
			ScriptFunction SetWeaponAttachmentVisibility() { mixin(MGF!("mSetWeaponAttachmentVisibility", "Function UDKBase.UDKPawn.SetWeaponAttachmentVisibility")()); }
			ScriptFunction SetHandIKEnabled() { mixin(MGF!("mSetHandIKEnabled", "Function UDKBase.UDKPawn.SetHandIKEnabled")()); }
			ScriptFunction StartFeignDeathRecoveryAnim() { mixin(MGF!("mStartFeignDeathRecoveryAnim", "Function UDKBase.UDKPawn.StartFeignDeathRecoveryAnim")()); }
			ScriptFunction TakeHitBlendedOut() { mixin(MGF!("mTakeHitBlendedOut", "Function UDKBase.UDKPawn.TakeHitBlendedOut")()); }
			ScriptFunction UpdateEyeHeight() { mixin(MGF!("mUpdateEyeHeight", "Function UDKBase.UDKPawn.UpdateEyeHeight")()); }
			ScriptFunction StuckFalling() { mixin(MGF!("mStuckFalling", "Function UDKBase.UDKPawn.StuckFalling")()); }
		}
	}
	struct DrivenWeaponPawnInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.DrivenWeaponPawnInfo")()); }
		@property final auto ref
		{
			PlayerReplicationInfo PRI() { mixin(MGPS!("PlayerReplicationInfo", 8)()); }
			ubyte SeatIndex() { mixin(MGPS!("ubyte", 4)()); }
			UDKVehicle BaseVehicle() { mixin(MGPS!("UDKVehicle", 0)()); }
		}
	}
	struct UTTakeHitInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.UTTakeHitInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptName HitBone() { mixin(MGPS!("ScriptName", 32)()); }
				// WARNING: Property 'DamageType' has the same name as a defined type!
				Vector Momentum() { mixin(MGPS!("Vector", 16)()); }
				Vector HitLocation() { mixin(MGPS!("Vector", 4)()); }
				int Damage() { mixin(MGPS!("int", 0)()); }
			}
			bool m_bDamagedSelf() { mixin(MGBPS!(40, 0x1)()); }
			bool m_bDamagedSelf(bool val) { mixin(MSBPS!(40, 0x1)()); }
		}
	}
	struct PlayEmoteInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.PlayEmoteInfo")()); }
		@property final
		{
			auto ref
			{
				int EmoteID() { mixin(MGPS!("int", 8)()); }
				ScriptName EmoteTag() { mixin(MGPS!("ScriptName", 0)()); }
			}
			bool bNewData() { mixin(MGBPS!(12, 0x1)()); }
			bool bNewData(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct MaterialImpactEffect
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.MaterialImpactEffect")()); }
		@property final auto ref
		{
			ScriptArray!(MaterialInterface) DecalMaterials() { mixin(MGPS!("ScriptArray!(MaterialInterface)", 12)()); }
			ParticleSystem ParticleTemplate() { mixin(MGPS!("ParticleSystem", 44)()); }
			float DecalHeight() { mixin(MGPS!("float", 40)()); }
			float DecalWidth() { mixin(MGPS!("float", 36)()); }
			ScriptName DecalDissolveParamName() { mixin(MGPS!("ScriptName", 28)()); }
			float DurationOfDecal() { mixin(MGPS!("float", 24)()); }
			SoundCue Sound() { mixin(MGPS!("SoundCue", 8)()); }
			ScriptName MaterialType() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct MaterialSoundEffect
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.MaterialSoundEffect")()); }
		@property final auto ref
		{
			SoundCue Sound() { mixin(MGPS!("SoundCue", 8)()); }
			ScriptName MaterialType() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct MaterialParticleEffect
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.MaterialParticleEffect")()); }
		@property final auto ref
		{
			ParticleSystem ParticleTemplate() { mixin(MGPS!("ParticleSystem", 8)()); }
			ScriptName MaterialType() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct DistanceBasedParticleTemplate
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.DistanceBasedParticleTemplate")()); }
		@property final auto ref
		{
			float MinDistance() { mixin(MGPS!("float", 4)()); }
			ParticleSystem Template() { mixin(MGPS!("ParticleSystem", 0)()); }
		}
	}
	struct EmoteInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKPawn.EmoteInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptName Command() { mixin(MGPS!("ScriptName", 40)()); }
				ScriptName EmoteAnim() { mixin(MGPS!("ScriptName", 28)()); }
				ScriptString EmoteName() { mixin(MGPS!("ScriptString", 16)()); }
				ScriptName EmoteTag() { mixin(MGPS!("ScriptName", 8)()); }
				ScriptName CategoryName() { mixin(MGPS!("ScriptName", 0)()); }
			}
			bool bRequiresPlayer() { mixin(MGBPS!(48, 0x1)()); }
			bool bRequiresPlayer(bool val) { mixin(MSBPS!(48, 0x1)()); }
			bool bTopHalfEmote() { mixin(MGBPS!(36, 0x2)()); }
			bool bTopHalfEmote(bool val) { mixin(MSBPS!(36, 0x2)()); }
			bool bVictoryEmote() { mixin(MGBPS!(36, 0x1)()); }
			bool bVictoryEmote(bool val) { mixin(MSBPS!(36, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) BodyMaterialInstances() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant)", 1316)()); }
			ScriptArray!(UDKBot) Trackers() { mixin(MGPC!("ScriptArray!(UDKBot)", 1352)()); }
			Vector HUDLocation() { mixin(MGPC!("Vector", 1604)()); }
			UObject.Vector2D CurrentSkelAim() { mixin(MGPC!("UObject.Vector2D", 1596)()); }
			int MaxYawAim() { mixin(MGPC!("int", 1592)()); }
			float RootYawSpeed() { mixin(MGPC!("float", 1588)()); }
			int RootYaw() { mixin(MGPC!("int", 1584)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ArmsMesh'!
			float TakeHitPhysicsBlendOutSpeed() { mixin(MGPC!("float", 1572)()); }
			float CrouchMeshZOffset() { mixin(MGPC!("float", 1568)()); }
			float SwimmingZOffsetSpeed() { mixin(MGPC!("float", 1564)()); }
			float SwimmingZOffset() { mixin(MGPC!("float", 1560)()); }
			float FeignDeathPhysicsBlendOutSpeed() { mixin(MGPC!("float", 1556)()); }
			int MaxLeanRoll() { mixin(MGPC!("int", 1552)()); }
			AnimNodeAimOffset FlyingDirOffset() { mixin(MGPC!("AnimNodeAimOffset", 1548)()); }
			float SlopeBoostFriction() { mixin(MGPC!("float", 1544)()); }
			float StartedFallingTime() { mixin(MGPC!("float", 1540)()); }
			float TeamBeaconMaxDist() { mixin(MGPC!("float", 1536)()); }
			float LastPostRenderTraceTime() { mixin(MGPC!("float", 1532)()); }
			ScriptName SaturationParameterName() { mixin(MGPC!("ScriptName", 1524)()); }
			ScriptName DamageParameterName() { mixin(MGPC!("ScriptName", 1516)()); }
			SkelControlLimb RightHandIK() { mixin(MGPC!("SkelControlLimb", 1512)()); }
			SkelControlLimb LeftHandIK() { mixin(MGPC!("SkelControlLimb", 1508)()); }
			SkelControlFootPlacement RightLegControl() { mixin(MGPC!("SkelControlFootPlacement", 1504)()); }
			SkelControlFootPlacement LeftLegControl() { mixin(MGPC!("SkelControlFootPlacement", 1500)()); }
			float MaxFootPlacementDistSquared() { mixin(MGPC!("float", 1496)()); }
			float ZSmoothingRate() { mixin(MGPC!("float", 1492)()); }
			float OldLocationZ() { mixin(MGPC!("float", 1488)()); }
			float CrouchTranslationOffset() { mixin(MGPC!("float", 1484)()); }
			float BaseTranslationOffset() { mixin(MGPC!("float", 1480)()); }
			ScriptName RightFootControlName() { mixin(MGPC!("ScriptName", 1472)()); }
			ScriptName LeftFootControlName() { mixin(MGPC!("ScriptName", 1464)()); }
			ScriptName RightFootBone() { mixin(MGPC!("ScriptName", 1456)()); }
			ScriptName LeftFootBone() { mixin(MGPC!("ScriptName", 1448)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OverlayMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BlobShadow'!
			float FallSpeedThreshold() { mixin(MGPC!("float", 1436)()); }
			SoundCue FallImpactSound() { mixin(MGPC!("SoundCue", 1432)()); }
			ScriptName TorsoBoneName() { mixin(MGPC!("ScriptName", 1424)()); }
			float StartFallImpactTime() { mixin(MGPC!("float", 1420)()); }
			Rotator CompressedBodyMatColor() { mixin(MGPC!("Rotator", 1408)()); }
			UObject.LinearColor BodyMatColor() { mixin(MGPC!("UObject.LinearColor", 1392)()); }
			float ClientBodyMatDuration() { mixin(MGPC!("float", 1388)()); }
			float RemainingBodyMatDuration() { mixin(MGPC!("float", 1384)()); }
			UObject.LinearColor CurrentBodyMatColor() { mixin(MGPC!("UObject.LinearColor", 1368)()); }
			float BodyMatFadeDuration() { mixin(MGPC!("float", 1364)()); }
			GameSkelCtrl_Recoil RightRecoilNode() { mixin(MGPC!("GameSkelCtrl_Recoil", 1348)()); }
			GameSkelCtrl_Recoil LeftRecoilNode() { mixin(MGPC!("GameSkelCtrl_Recoil", 1344)()); }
			GameSkelCtrl_Recoil GunRecoilNode() { mixin(MGPC!("GameSkelCtrl_Recoil", 1340)()); }
			AnimNodeAimOffset AimNode() { mixin(MGPC!("AnimNodeAimOffset", 1336)()); }
			SkelControlSingleBone RootRotControl() { mixin(MGPC!("SkelControlSingleBone", 1332)()); }
			MaterialInterface OverlayMaterialInstance() { mixin(MGPC!("MaterialInterface", 1328)()); }
			Material ReplicatedBodyMaterial() { mixin(MGPC!("Material", 1312)()); }
			SoundCue WeaponAmbientSoundCue() { mixin(MGPC!("SoundCue", 1308)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'WeaponAmbientSound'!
			UDKPawn.DrivenWeaponPawnInfo DrivenWeaponPawn() { mixin(MGPC!("UDKPawn.DrivenWeaponPawnInfo", 1292)()); }
			SoundCue PawnAmbientSoundCue() { mixin(MGPC!("SoundCue", 1288)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PawnAmbientSound'!
			float OldZ() { mixin(MGPC!("float", 1280)()); }
			Vector MeshTranslationOffset() { mixin(MGPC!("Vector", 1268)()); }
			float SmoothNetUpdateTime() { mixin(MGPC!("float", 1264)()); }
			float NoSmoothNetUpdateDist() { mixin(MGPC!("float", 1260)()); }
			float MaxSmoothNetUpdateDist() { mixin(MGPC!("float", 1256)()); }
			float HeadScale() { mixin(MGPC!("float", 1252)()); }
			float FireRateMultiplier() { mixin(MGPC!("float", 1248)()); }
			float LastTakeHitTimeout() { mixin(MGPC!("float", 1244)()); }
			UDKPawn.UTTakeHitInfo LastTakeHitInfo() { mixin(MGPC!("UDKPawn.UTTakeHitInfo", 1200)()); }
			ubyte WeaponOverlayFlags() { mixin(MGPC!("ubyte", 1197)()); }
			ubyte BigTeleportCount() { mixin(MGPC!("ubyte", 1196)()); }
			float MinTimeBetweenEmotes() { mixin(MGPC!("float", 1192)()); }
			float LastEmoteTime() { mixin(MGPC!("float", 1188)()); }
			UDKPawn.PlayEmoteInfo EmoteRepInfo() { mixin(MGPC!("UDKPawn.PlayEmoteInfo", 1172)()); }
			float CustomGravityScaling() { mixin(MGPC!("float", 1168)()); }
			int MultiJumpBoost() { mixin(MGPC!("int", 1164)()); }
			int MaxMultiJump() { mixin(MGPC!("int", 1160)()); }
			int MultiJumpRemaining() { mixin(MGPC!("int", 1156)()); }
			float MaxDoubleJumpHeight() { mixin(MGPC!("float", 1152)()); }
		}
		bool bNotifyStopFalling() { mixin(MGBPC!(1148, 0x40)()); }
		bool bNotifyStopFalling(bool val) { mixin(MSBPC!(1148, 0x40)()); }
		bool bReadyToDoubleJump() { mixin(MGBPC!(1148, 0x1)()); }
		bool bReadyToDoubleJump(bool val) { mixin(MSBPC!(1148, 0x1)()); }
		bool bTearOffGibs() { mixin(MGBPC!(1148, 0x10000)()); }
		bool bTearOffGibs(bool val) { mixin(MSBPC!(1148, 0x10000)()); }
		bool bUpdateEyeheight() { mixin(MGBPC!(1148, 0x8000)()); }
		bool bUpdateEyeheight(bool val) { mixin(MSBPC!(1148, 0x8000)()); }
		bool bBlendOutTakeHitPhysics() { mixin(MGBPC!(1148, 0x4000)()); }
		bool bBlendOutTakeHitPhysics(bool val) { mixin(MSBPC!(1148, 0x4000)()); }
		bool bPostRenderOtherTeam() { mixin(MGBPC!(1148, 0x2000)()); }
		bool bPostRenderOtherTeam(bool val) { mixin(MSBPC!(1148, 0x2000)()); }
		bool bEnableFootPlacement() { mixin(MGBPC!(1148, 0x1000)()); }
		bool bEnableFootPlacement(bool val) { mixin(MSBPC!(1148, 0x1000)()); }
		bool bCanPlayFallingImpacts() { mixin(MGBPC!(1148, 0x800)()); }
		bool bCanPlayFallingImpacts(bool val) { mixin(MSBPC!(1148, 0x800)()); }
		bool bPlayingFeignDeathRecovery() { mixin(MGBPC!(1148, 0x400)()); }
		bool bPlayingFeignDeathRecovery(bool val) { mixin(MSBPC!(1148, 0x400)()); }
		bool bPuttingDownWeapon() { mixin(MGBPC!(1148, 0x200)()); }
		bool bPuttingDownWeapon(bool val) { mixin(MSBPC!(1148, 0x200)()); }
		bool bSmoothNetUpdates() { mixin(MGBPC!(1148, 0x100)()); }
		bool bSmoothNetUpdates(bool val) { mixin(MSBPC!(1148, 0x100)()); }
		bool bIsInvisible() { mixin(MGBPC!(1148, 0x80)()); }
		bool bIsInvisible(bool val) { mixin(MSBPC!(1148, 0x80)()); }
		bool bFeigningDeath() { mixin(MGBPC!(1148, 0x20)()); }
		bool bFeigningDeath(bool val) { mixin(MSBPC!(1148, 0x20)()); }
		bool bIsHoverboardAnimPawn() { mixin(MGBPC!(1148, 0x10)()); }
		bool bIsHoverboardAnimPawn(bool val) { mixin(MSBPC!(1148, 0x10)()); }
		bool bNoJumpAdjust() { mixin(MGBPC!(1148, 0x8)()); }
		bool bNoJumpAdjust(bool val) { mixin(MSBPC!(1148, 0x8)()); }
		bool bCanDoubleJump() { mixin(MGBPC!(1148, 0x4)()); }
		bool bCanDoubleJump(bool val) { mixin(MSBPC!(1148, 0x4)()); }
		bool bRequiresDoubleJump() { mixin(MGBPC!(1148, 0x2)()); }
		bool bRequiresDoubleJump(bool val) { mixin(MSBPC!(1148, 0x2)()); }
	}
final:
	void GetBoundingCylinder(ref float CollisionRadius, ref float CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = CollisionRadius;
		*cast(float*)&params[4] = CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundingCylinder, params.ptr, cast(void*)0);
		CollisionRadius = *cast(float*)params.ptr;
		CollisionHeight = *cast(float*)&params[4];
	}
	void RestorePreRagdollCollisionComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestorePreRagdollCollisionComponent, cast(void*)0, cast(void*)0);
	}
	void EnsureOverlayComponentLast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnsureOverlayComponentLast, cast(void*)0, cast(void*)0);
	}
	Vector GetTargetLocation(Actor* RequestedBy = null, bool* bRequestAlternateLoc = null)
	{
		ubyte params[20];
		params[] = 0;
		if (RequestedBy !is null)
			*cast(Actor*)params.ptr = *RequestedBy;
		if (bRequestAlternateLoc !is null)
			*cast(bool*)&params[4] = *bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInvisible, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void HoldGameObject(UDKCarriedObject UDKGameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = UDKGameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	void StoppedFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StoppedFalling, cast(void*)0, cast(void*)0);
	}
	void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndCrouch, params.ptr, cast(void*)0);
	}
	void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartCrouch, params.ptr, cast(void*)0);
	}
	bool SuggestJumpVelocity(ref Vector JumpVelocity, Vector Destination, Vector Start, bool* bRequireFallLanding = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		if (bRequireFallLanding !is null)
			*cast(bool*)&params[36] = *bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestJumpVelocity, params.ptr, cast(void*)0);
		JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
	}
	void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativePostRenderFor, params.ptr, cast(void*)0);
	}
	void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponAttachmentVisibility, params.ptr, cast(void*)0);
	}
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHandIKEnabled, params.ptr, cast(void*)0);
	}
	void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFeignDeathRecoveryAnim, cast(void*)0, cast(void*)0);
	}
	void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeHitBlendedOut, cast(void*)0, cast(void*)0);
	}
	void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEyeHeight, params.ptr, cast(void*)0);
	}
	void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StuckFalling, cast(void*)0, cast(void*)0);
	}
}
