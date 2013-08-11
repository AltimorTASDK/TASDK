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
	struct DrivenWeaponPawnInfo
	{
		public @property final auto ref PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)&this + 8); }
		private ubyte __PRI[4];
		public @property final auto ref ubyte SeatIndex() { return *cast(ubyte*)(cast(size_t)&this + 4); }
		private ubyte __SeatIndex[1];
		public @property final auto ref UDKVehicle BaseVehicle() { return *cast(UDKVehicle*)(cast(size_t)&this + 0); }
		private ubyte __BaseVehicle[4];
	}
	struct UTTakeHitInfo
	{
		public @property final bool m_bDamagedSelf() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool m_bDamagedSelf(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __m_bDamagedSelf[4];
		public @property final auto ref ScriptName HitBone() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
		private ubyte __HitBone[8];
		// WARNING: Property 'DamageType' has the same name as a defined type!
		public @property final auto ref Vector Momentum() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Momentum[12];
		public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __HitLocation[12];
		public @property final auto ref int Damage() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Damage[4];
	}
	struct PlayEmoteInfo
	{
		public @property final bool bNewData() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bNewData(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bNewData[4];
		public @property final auto ref int EmoteID() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __EmoteID[4];
		public @property final auto ref ScriptName EmoteTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __EmoteTag[8];
	}
	struct MaterialImpactEffect
	{
		public @property final auto ref ScriptArray!(MaterialInterface) DecalMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 12); }
		private ubyte __DecalMaterials[12];
		public @property final auto ref ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 44); }
		private ubyte __ParticleTemplate[4];
		public @property final auto ref float DecalHeight() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __DecalHeight[4];
		public @property final auto ref float DecalWidth() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __DecalWidth[4];
		public @property final auto ref ScriptName DecalDissolveParamName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __DecalDissolveParamName[8];
		public @property final auto ref float DurationOfDecal() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __DurationOfDecal[4];
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __Sound[4];
		public @property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __MaterialType[8];
	}
	struct MaterialSoundEffect
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __Sound[4];
		public @property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __MaterialType[8];
	}
	struct MaterialParticleEffect
	{
		public @property final auto ref ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
		private ubyte __ParticleTemplate[4];
		public @property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __MaterialType[8];
	}
	struct DistanceBasedParticleTemplate
	{
		public @property final auto ref float MinDistance() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MinDistance[4];
		public @property final auto ref ParticleSystem Template() { return *cast(ParticleSystem*)(cast(size_t)&this + 0); }
		private ubyte __Template[4];
	}
	struct EmoteInfo
	{
		public @property final bool bRequiresPlayer() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
		public @property final bool bRequiresPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
		private ubyte __bRequiresPlayer[4];
		public @property final auto ref ScriptName Command() { return *cast(ScriptName*)(cast(size_t)&this + 40); }
		private ubyte __Command[8];
		public @property final bool bTopHalfEmote() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x2) != 0; }
		public @property final bool bTopHalfEmote(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x2; } return val; }
		private ubyte __bTopHalfEmote[4];
		public @property final bool bVictoryEmote() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bVictoryEmote(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bVictoryEmote[4];
		public @property final auto ref ScriptName EmoteAnim() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __EmoteAnim[8];
		public @property final auto ref ScriptString EmoteName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __EmoteName[12];
		public @property final auto ref ScriptName EmoteTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __EmoteTag[8];
		public @property final auto ref ScriptName CategoryName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __CategoryName[8];
	}
	public @property final bool bNotifyStopFalling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x40) != 0; }
	public @property final bool bNotifyStopFalling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x40; } return val; }
	public @property final bool bReadyToDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1) != 0; }
	public @property final bool bReadyToDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(MaterialInstanceConstant) BodyMaterialInstances() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref ScriptArray!(UDKBot) Trackers() { return *cast(ScriptArray!(UDKBot)*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1604); }
	public @property final auto ref UObject.Vector2D CurrentSkelAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref int MaxYawAim() { return *cast(int*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref float RootYawSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref int RootYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1584); }
	public @property final auto ref float TakeHitPhysicsBlendOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref float CrouchMeshZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref float SwimmingZOffsetSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref float SwimmingZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float FeignDeathPhysicsBlendOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref int MaxLeanRoll() { return *cast(int*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref AnimNodeAimOffset FlyingDirOffset() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 1548); }
	public @property final auto ref float SlopeBoostFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref float StartedFallingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref float TeamBeaconMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
	public @property final auto ref ScriptName SaturationParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1524); }
	public @property final auto ref ScriptName DamageParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref SkelControlLimb RightHandIK() { return *cast(SkelControlLimb*)(cast(size_t)cast(void*)this + 1512); }
	public @property final auto ref SkelControlLimb LeftHandIK() { return *cast(SkelControlLimb*)(cast(size_t)cast(void*)this + 1508); }
	public @property final auto ref SkelControlFootPlacement RightLegControl() { return *cast(SkelControlFootPlacement*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref SkelControlFootPlacement LeftLegControl() { return *cast(SkelControlFootPlacement*)(cast(size_t)cast(void*)this + 1500); }
	public @property final auto ref float MaxFootPlacementDistSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1496); }
	public @property final auto ref float ZSmoothingRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref float OldLocationZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref float CrouchTranslationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref float BaseTranslationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref ScriptName RightFootControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref ScriptName LeftFootControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1464); }
	public @property final auto ref ScriptName RightFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref ScriptName LeftFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1448); }
	public @property final auto ref float FallSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
	public @property final auto ref SoundCue FallImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref ScriptName TorsoBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1424); }
	public @property final auto ref float StartFallImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
	public @property final auto ref Rotator CompressedBodyMatColor() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref UObject.LinearColor BodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref float ClientBodyMatDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
	public @property final auto ref float RemainingBodyMatDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref UObject.LinearColor CurrentBodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref float BodyMatFadeDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref GameSkelCtrl_Recoil RightRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref GameSkelCtrl_Recoil LeftRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref GameSkelCtrl_Recoil GunRecoilNode() { return *cast(GameSkelCtrl_Recoil*)(cast(size_t)cast(void*)this + 1340); }
	public @property final auto ref AnimNodeAimOffset AimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref SkelControlSingleBone RootRotControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref MaterialInterface OverlayMaterialInstance() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 1328); }
	public @property final auto ref Material ReplicatedBodyMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref SoundCue WeaponAmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref UDKPawn.DrivenWeaponPawnInfo DrivenWeaponPawn() { return *cast(UDKPawn.DrivenWeaponPawnInfo*)(cast(size_t)cast(void*)this + 1292); }
	public @property final auto ref SoundCue PawnAmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1288); }
	public @property final auto ref float OldZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1280); }
	public @property final auto ref Vector MeshTranslationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1268); }
	public @property final auto ref float SmoothNetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref float NoSmoothNetUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref float MaxSmoothNetUpdateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref float HeadScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref float FireRateMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref float LastTakeHitTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref UDKPawn.UTTakeHitInfo LastTakeHitInfo() { return *cast(UDKPawn.UTTakeHitInfo*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref ubyte WeaponOverlayFlags() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1197); }
	public @property final auto ref ubyte BigTeleportCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref float MinTimeBetweenEmotes() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref float LastEmoteTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref UDKPawn.PlayEmoteInfo EmoteRepInfo() { return *cast(UDKPawn.PlayEmoteInfo*)(cast(size_t)cast(void*)this + 1172); }
	public @property final auto ref float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref int MultiJumpBoost() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref int MaxMultiJump() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref int MultiJumpRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
	public @property final auto ref float MaxDoubleJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
	public @property final bool bTearOffGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x10000) != 0; }
	public @property final bool bTearOffGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x10000; } return val; }
	public @property final bool bUpdateEyeheight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x8000) != 0; }
	public @property final bool bUpdateEyeheight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x8000; } return val; }
	public @property final bool bBlendOutTakeHitPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x4000) != 0; }
	public @property final bool bBlendOutTakeHitPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x4000; } return val; }
	public @property final bool bPostRenderOtherTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x2000) != 0; }
	public @property final bool bPostRenderOtherTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x2000; } return val; }
	public @property final bool bEnableFootPlacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1000) != 0; }
	public @property final bool bEnableFootPlacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1000; } return val; }
	public @property final bool bCanPlayFallingImpacts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x800) != 0; }
	public @property final bool bCanPlayFallingImpacts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x800; } return val; }
	public @property final bool bPlayingFeignDeathRecovery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x400) != 0; }
	public @property final bool bPlayingFeignDeathRecovery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x400; } return val; }
	public @property final bool bPuttingDownWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x200) != 0; }
	public @property final bool bPuttingDownWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x200; } return val; }
	public @property final bool bSmoothNetUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x100) != 0; }
	public @property final bool bSmoothNetUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x100; } return val; }
	public @property final bool bIsInvisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x80) != 0; }
	public @property final bool bIsInvisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x80; } return val; }
	public @property final bool bFeigningDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x20) != 0; }
	public @property final bool bFeigningDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x20; } return val; }
	public @property final bool bIsHoverboardAnimPawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x10) != 0; }
	public @property final bool bIsHoverboardAnimPawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x10; } return val; }
	public @property final bool bNoJumpAdjust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x8) != 0; }
	public @property final bool bNoJumpAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x8; } return val; }
	public @property final bool bCanDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x4) != 0; }
	public @property final bool bCanDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x4; } return val; }
	public @property final bool bRequiresDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x2) != 0; }
	public @property final bool bRequiresDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x2; } return val; }
	final void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35159], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	final void RestorePreRagdollCollisionComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35162], cast(void*)0, cast(void*)0);
	}
	final void EnsureOverlayComponentLast()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35163], cast(void*)0, cast(void*)0);
	}
	final Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35164], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35168], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void HoldGameObject(UDKCarriedObject UDKGameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = UDKGameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35170], params.ptr, cast(void*)0);
	}
	final void StoppedFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35172], cast(void*)0, cast(void*)0);
	}
	final void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35173], params.ptr, cast(void*)0);
	}
	final void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35175], params.ptr, cast(void*)0);
	}
	final bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
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
	final void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35183], params.ptr, cast(void*)0);
	}
	final void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35185], params.ptr, cast(void*)0);
	}
	final void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35190], params.ptr, cast(void*)0);
	}
	final void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35192], params.ptr, cast(void*)0);
	}
	final void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35194], cast(void*)0, cast(void*)0);
	}
	final void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35195], cast(void*)0, cast(void*)0);
	}
	final void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35196], params.ptr, cast(void*)0);
	}
	final void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35198], cast(void*)0, cast(void*)0);
	}
}
