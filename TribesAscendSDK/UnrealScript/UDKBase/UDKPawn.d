module UnrealScript.UDKBase.UDKPawn;

import ScriptClasses;
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
	struct DrivenWeaponPawnInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)&this + 8); }
			ubyte SeatIndex() { return *cast(ubyte*)(cast(size_t)&this + 4); }
			UDKVehicle BaseVehicle() { return *cast(UDKVehicle*)(cast(size_t)&this + 0); }
		}
	}
	struct UTTakeHitInfo
	{
		private ubyte __buffer__[44];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptName HitBone() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
				// WARNING: Property 'DamageType' has the same name as a defined type!
				Vector Momentum() { return *cast(Vector*)(cast(size_t)&this + 16); }
				Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
				int Damage() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool m_bDamagedSelf() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool m_bDamagedSelf(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		}
	}
	struct PlayEmoteInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				int EmoteID() { return *cast(int*)(cast(size_t)&this + 8); }
				ScriptName EmoteTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bNewData() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bNewData(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct MaterialImpactEffect
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(MaterialInterface) DecalMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 12); }
			ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 44); }
			float DecalHeight() { return *cast(float*)(cast(size_t)&this + 40); }
			float DecalWidth() { return *cast(float*)(cast(size_t)&this + 36); }
			ScriptName DecalDissolveParamName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
			float DurationOfDecal() { return *cast(float*)(cast(size_t)&this + 24); }
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct MaterialSoundEffect
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct MaterialParticleEffect
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct DistanceBasedParticleTemplate
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			float MinDistance() { return *cast(float*)(cast(size_t)&this + 4); }
			ParticleSystem Template() { return *cast(ParticleSystem*)(cast(size_t)&this + 0); }
		}
	}
	struct EmoteInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptName Command() { return *cast(ScriptName*)(cast(size_t)&this + 40); }
				ScriptName EmoteAnim() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
				ScriptString EmoteName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptName EmoteTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
				ScriptName CategoryName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bRequiresPlayer() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
			bool bRequiresPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
			bool bTopHalfEmote() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x2) != 0; }
			bool bTopHalfEmote(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x2; } return val; }
			bool bVictoryEmote() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bVictoryEmote(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) BodyMaterialInstances() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 1316); }
			ScriptArray!(UDKBot) Trackers() { return *cast(ScriptArray!(UDKBot)*)(cast(size_t)cast(void*)this + 1352); }
			Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1604); }
			UObject.Vector2D CurrentSkelAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1596); }
			int MaxYawAim() { return *cast(int*)(cast(size_t)cast(void*)this + 1592); }
			float RootYawSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
			int RootYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1584); }
			float TakeHitPhysicsBlendOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			float CrouchMeshZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
			float SwimmingZOffsetSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
			float SwimmingZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			float FeignDeathPhysicsBlendOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
			int MaxLeanRoll() { return *cast(int*)(cast(size_t)cast(void*)this + 1552); }
			AnimNodeAimOffset FlyingDirOffset() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 1548); }
			float SlopeBoostFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
			float StartedFallingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
			float TeamBeaconMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
			float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
			ScriptName SaturationParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1524); }
			ScriptName DamageParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1516); }
			SkelControlLimb RightHandIK() { return *cast(SkelControlLimb*)(cast(size_t)cast(void*)this + 1512); }
			SkelControlLimb LeftHandIK() { return *cast(SkelControlLimb*)(cast(size_t)cast(void*)this + 1508); }
			SkelControlFootPlacement RightLegControl() { return *cast(SkelControlFootPlacement*)(cast(size_t)cast(void*)this + 1504); }
			SkelControlFootPlacement LeftLegControl() { return *cast(SkelControlFootPlacement*)(cast(size_t)cast(void*)this + 1500); }
			float MaxFootPlacementDistSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1496); }
			float ZSmoothingRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1492); }
			float OldLocationZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
			float CrouchTranslationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
			float BaseTranslationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1480); }
			ScriptName RightFootControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1472); }
			ScriptName LeftFootControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1464); }
			ScriptName RightFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
			ScriptName LeftFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1448); }
			float FallSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
			SoundCue FallImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1432); }
			ScriptName TorsoBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1424); }
			float StartFallImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			Rotator CompressedBodyMatColor() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1408); }
			UObject.LinearColor BodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1392); }
			float ClientBodyMatDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
			float RemainingBodyMatDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
			UObject.LinearColor CurrentBodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1368); }
			float BodyMatFadeDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
			GameSkelCtrl_Recoil RightRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1348); }
			GameSkelCtrl_Recoil LeftRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1344); }
			GameSkelCtrl_Recoil GunRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1340); }
			AnimNodeAimOffset AimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 1336); }
			SkelControlSingleBone RootRotControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1332); }
			MaterialInterface OverlayMaterialInstance() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 1328); }
			Material ReplicatedBodyMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1312); }
			SoundCue WeaponAmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1308); }
			UDKPawn.DrivenWeaponPawnInfo DrivenWeaponPawn() { return *cast(UDKPawn.DrivenWeaponPawnInfo*)(cast(size_t)cast(void*)this + 1292); }
			SoundCue PawnAmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1288); }
			float OldZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1280); }
			Vector MeshTranslationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1268); }
			float SmoothNetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
			float NoSmoothNetUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
			float MaxSmoothNetUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
			float HeadScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
			float FireRateMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
			float LastTakeHitTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
			UDKPawn.UTTakeHitInfo LastTakeHitInfo() { return *cast(UDKPawn.UTTakeHitInfo*)(cast(size_t)cast(void*)this + 1200); }
			ubyte WeaponOverlayFlags() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1197); }
			ubyte BigTeleportCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1196); }
			float MinTimeBetweenEmotes() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			float LastEmoteTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
			UDKPawn.PlayEmoteInfo EmoteRepInfo() { return *cast(UDKPawn.PlayEmoteInfo*)(cast(size_t)cast(void*)this + 1172); }
			float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
			int MultiJumpBoost() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
			int MaxMultiJump() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			int MultiJumpRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
			float MaxDoubleJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
		}
		bool bNotifyStopFalling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x40) != 0; }
		bool bNotifyStopFalling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x40; } return val; }
		bool bReadyToDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1) != 0; }
		bool bReadyToDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1; } return val; }
		bool bTearOffGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x10000) != 0; }
		bool bTearOffGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x10000; } return val; }
		bool bUpdateEyeheight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x8000) != 0; }
		bool bUpdateEyeheight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x8000; } return val; }
		bool bBlendOutTakeHitPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x4000) != 0; }
		bool bBlendOutTakeHitPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x4000; } return val; }
		bool bPostRenderOtherTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x2000) != 0; }
		bool bPostRenderOtherTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x2000; } return val; }
		bool bEnableFootPlacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1000) != 0; }
		bool bEnableFootPlacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1000; } return val; }
		bool bCanPlayFallingImpacts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x800) != 0; }
		bool bCanPlayFallingImpacts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x800; } return val; }
		bool bPlayingFeignDeathRecovery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x400) != 0; }
		bool bPlayingFeignDeathRecovery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x400; } return val; }
		bool bPuttingDownWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x200) != 0; }
		bool bPuttingDownWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x200; } return val; }
		bool bSmoothNetUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x100) != 0; }
		bool bSmoothNetUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x100; } return val; }
		bool bIsInvisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x80) != 0; }
		bool bIsInvisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x80; } return val; }
		bool bFeigningDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x20) != 0; }
		bool bFeigningDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x20; } return val; }
		bool bIsHoverboardAnimPawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x10) != 0; }
		bool bIsHoverboardAnimPawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x10; } return val; }
		bool bNoJumpAdjust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x8) != 0; }
		bool bNoJumpAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x8; } return val; }
		bool bCanDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x4) != 0; }
		bool bCanDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x4; } return val; }
		bool bRequiresDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x2) != 0; }
		bool bRequiresDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x2; } return val; }
	}
final:
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35159], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	void RestorePreRagdollCollisionComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35162], cast(void*)0, cast(void*)0);
	}
	void EnsureOverlayComponentLast()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35163], cast(void*)0, cast(void*)0);
	}
	Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35164], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35168], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void HoldGameObject(UDKCarriedObject UDKGameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = UDKGameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35170], params.ptr, cast(void*)0);
	}
	void StoppedFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35172], cast(void*)0, cast(void*)0);
	}
	void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35173], params.ptr, cast(void*)0);
	}
	void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35175], params.ptr, cast(void*)0);
	}
	bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35177], params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35183], params.ptr, cast(void*)0);
	}
	void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35185], params.ptr, cast(void*)0);
	}
	void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35190], params.ptr, cast(void*)0);
	}
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35192], params.ptr, cast(void*)0);
	}
	void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35194], cast(void*)0, cast(void*)0);
	}
	void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35195], cast(void*)0, cast(void*)0);
	}
	void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35196], params.ptr, cast(void*)0);
	}
	void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35198], cast(void*)0, cast(void*)0);
	}
}
