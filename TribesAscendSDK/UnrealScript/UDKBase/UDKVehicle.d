module UnrealScript.UDKBase.UDKVehicle;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Damage;
import UnrealScript.Engine.MaterialInstanceTimeVarying;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.MorphNodeWeight;
import UnrealScript.Engine.AnimTree;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.UDKBase.UDKForcedDirectionVolume;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Canvas;
import UnrealScript.UDKBase.UDKWeapon;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.UDKBase.UDKVehicleBase;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UDKBase.UDKVehicleMovementEffect;
import UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

extern(C++) interface UDKVehicle : UDKVehicleBase
{
	struct BurnOutDatum
	{
		public @property final auto ref float CurrValue() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __CurrValue[4];
		public @property final auto ref MaterialInstanceTimeVarying MITV() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)&this + 0); }
		private ubyte __MITV[4];
	}
	struct VehicleSeat
	{
		public @property final auto ref ScriptArray!(ScriptName) GunSocket() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 16); }
		private ubyte __GunSocket[12];
		public @property final auto ref ScriptArray!(ScriptName) GunPivotPoints() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 28); }
		private ubyte __GunPivotPoints[12];
		public @property final auto ref ScriptArray!(UDKVehicle.WeaponEffectInfo) WeaponEffects() { return *cast(ScriptArray!(UDKVehicle.WeaponEffectInfo)*)(cast(size_t)&this + 56); }
		private ubyte __WeaponEffects[12];
		public @property final auto ref ScriptArray!(ScriptName) TurretControls() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 128); }
		private ubyte __TurretControls[12];
		public @property final auto ref ScriptArray!(UDKSkelControl_TurretConstrained) TurretControllers() { return *cast(ScriptArray!(UDKSkelControl_TurretConstrained)*)(cast(size_t)&this + 140); }
		private ubyte __TurretControllers[12];
		public @property final auto ref ScriptArray!(UDKVehicle.VehicleSeatAnimInfo) m_SeatAnimInfo() { return *cast(ScriptArray!(UDKVehicle.VehicleSeatAnimInfo)*)(cast(size_t)&this + 324); }
		private ubyte __m_SeatAnimInfo[12];
		public @property final auto ref ScriptArray!(GameSkelCtrl_Recoil) m_TurretRecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)&this + 368); }
		private ubyte __m_TurretRecoilControls[12];
		public @property final auto ref ScriptArray!(ScriptName) m_TurretRecoilControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 380); }
		private ubyte __m_TurretRecoilControlNames[12];
		public @property final bool ValidFlagSeat() { return (*cast(uint*)(cast(size_t)&this + 428) & 0x1) != 0; }
		public @property final bool ValidFlagSeat(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 428) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 428) &= ~0x1; } return val; }
		private ubyte __ValidFlagSeat[4];
		public @property final auto ref Rotator FlagRotation() { return *cast(Rotator*)(cast(size_t)&this + 416); }
		private ubyte __FlagRotation[12];
		public @property final auto ref Vector FlagOffset() { return *cast(Vector*)(cast(size_t)&this + 404); }
		private ubyte __FlagOffset[12];
		public @property final auto ref ScriptName FlagSocketName() { return *cast(ScriptName*)(cast(size_t)&this + 396); }
		private ubyte __FlagSocketName[8];
		public @property final auto ref float m_fTurnInterpSpeed() { return *cast(float*)(cast(size_t)&this + 392); }
		private ubyte __m_fTurnInterpSpeed[4];
		public @property final auto ref Vector m_vIdealExitLocation() { return *cast(Vector*)(cast(size_t)&this + 356); }
		private ubyte __m_vIdealExitLocation[12];
		public @property final auto ref Vector m_vRidingPassengerMeshOffset() { return *cast(Vector*)(cast(size_t)&this + 344); }
		private ubyte __m_vRidingPassengerMeshOffset[12];
		public @property final auto ref float m_fViewYawLimit() { return *cast(float*)(cast(size_t)&this + 340); }
		private ubyte __m_fViewYawLimit[4];
		public @property final bool m_bAttachPawnDirectly() { return (*cast(uint*)(cast(size_t)&this + 336) & 0x1) != 0; }
		public @property final bool m_bAttachPawnDirectly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 336) &= ~0x1; } return val; }
		private ubyte __m_bAttachPawnDirectly[4];
		public @property final auto ref UObject.Vector2D SeatIconPOS() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 316); }
		private ubyte __SeatIconPOS[8];
		public @property final auto ref UDKVehicleMovementEffect SeatMovementEffect() { return *cast(UDKVehicleMovementEffect*)(cast(size_t)&this + 312); }
		private ubyte __SeatMovementEffect[4];
		public @property final auto ref float DriverDamageMult() { return *cast(float*)(cast(size_t)&this + 304); }
		private ubyte __DriverDamageMult[4];
		public @property final auto ref ScriptClass ImpactFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)&this + 300); }
		private ubyte __ImpactFlashLightClass[4];
		public @property final auto ref ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)&this + 292); }
		private ubyte __MuzzleFlashLightClass[4];
		public @property final auto ref ScriptName SeatSocket() { return *cast(ScriptName*)(cast(size_t)&this + 284); }
		private ubyte __SeatSocket[8];
		public @property final auto ref Rotator SeatRotation() { return *cast(Rotator*)(cast(size_t)&this + 272); }
		private ubyte __SeatRotation[12];
		public @property final auto ref Vector SeatOffset() { return *cast(Vector*)(cast(size_t)&this + 260); }
		private ubyte __SeatOffset[12];
		public @property final auto ref ScriptName SeatBone() { return *cast(ScriptName*)(cast(size_t)&this + 252); }
		private ubyte __SeatBone[8];
		public @property final bool bSeatVisible() { return (*cast(uint*)(cast(size_t)&this + 248) & 0x1) != 0; }
		public @property final bool bSeatVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 248) &= ~0x1; } return val; }
		private ubyte __bSeatVisible[4];
		public @property final auto ref float ViewPitchMax() { return *cast(float*)(cast(size_t)&this + 244); }
		private ubyte __ViewPitchMax[4];
		public @property final auto ref float ViewPitchMin() { return *cast(float*)(cast(size_t)&this + 240); }
		private ubyte __ViewPitchMin[4];
		public @property final auto ref float CameraZoomOffset() { return *cast(float*)(cast(size_t)&this + 236); }
		private ubyte __CameraZoomOffset[4];
		public @property final auto ref Vector CameraZoomBaseOffset() { return *cast(Vector*)(cast(size_t)&this + 224); }
		private ubyte __CameraZoomBaseOffset[12];
		public @property final auto ref ScriptName CameraZoomTag() { return *cast(ScriptName*)(cast(size_t)&this + 216); }
		private ubyte __CameraZoomTag[8];
		public @property final auto ref float CameraEyeHeight() { return *cast(float*)(cast(size_t)&this + 212); }
		private ubyte __CameraEyeHeight[4];
		public @property final auto ref float CameraOffset() { return *cast(float*)(cast(size_t)&this + 208); }
		private ubyte __CameraOffset[4];
		public @property final auto ref Vector CameraSafeOffset() { return *cast(Vector*)(cast(size_t)&this + 196); }
		private ubyte __CameraSafeOffset[12];
		public @property final auto ref Vector CameraBaseOffset() { return *cast(Vector*)(cast(size_t)&this + 184); }
		private ubyte __CameraBaseOffset[12];
		public @property final auto ref ScriptName CameraTag() { return *cast(ScriptName*)(cast(size_t)&this + 176); }
		private ubyte __CameraTag[8];
		public @property final bool bDisableOffsetZAdjust() { return (*cast(uint*)(cast(size_t)&this + 172) & 0x1) != 0; }
		public @property final bool bDisableOffsetZAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 172) &= ~0x1; } return val; }
		private ubyte __bDisableOffsetZAdjust[4];
		public @property final auto ref float PivotFireOffsetZ() { return *cast(float*)(cast(size_t)&this + 168); }
		private ubyte __PivotFireOffsetZ[4];
		public @property final auto ref Actor AimTarget() { return *cast(Actor*)(cast(size_t)&this + 164); }
		private ubyte __AimTarget[4];
		public @property final auto ref Vector AimPoint() { return *cast(Vector*)(cast(size_t)&this + 152); }
		private ubyte __AimPoint[12];
		public @property final auto ref Rotator LastWeaponRotation() { return *cast(Rotator*)(cast(size_t)&this + 116); }
		private ubyte __LastWeaponRotation[12];
		public @property final auto ref UObject.Pointer FiringModeProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 112); }
		private ubyte __FiringModeProperty[4];
		public @property final auto ref UObject.Pointer FlashCountProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 108); }
		private ubyte __FlashCountProperty[4];
		public @property final auto ref UObject.Pointer FlashLocationProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 104); }
		private ubyte __FlashLocationProperty[4];
		public @property final auto ref UObject.Pointer WeaponRotationProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 100); }
		private ubyte __WeaponRotationProperty[4];
		public @property final auto ref ScriptName FiringModeName() { return *cast(ScriptName*)(cast(size_t)&this + 92); }
		private ubyte __FiringModeName[8];
		public @property final auto ref ScriptName FlashCountName() { return *cast(ScriptName*)(cast(size_t)&this + 84); }
		private ubyte __FlashCountName[8];
		public @property final auto ref ScriptName FlashLocationName() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
		private ubyte __FlashLocationName[8];
		public @property final auto ref ScriptName WeaponRotationName() { return *cast(ScriptName*)(cast(size_t)&this + 68); }
		private ubyte __WeaponRotationName[8];
		public @property final auto ref ScriptString TurretVarPrefix() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
		private ubyte __TurretVarPrefix[12];
		public @property final auto ref int BarrelIndex() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __BarrelIndex[4];
		public @property final auto ref UDKWeapon Gun() { return *cast(UDKWeapon*)(cast(size_t)&this + 12); }
		private ubyte __Gun[4];
		public @property final auto ref ScriptClass GunClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		private ubyte __GunClass[4];
		public @property final auto ref Vehicle SeatPawn() { return *cast(Vehicle*)(cast(size_t)&this + 4); }
		private ubyte __SeatPawn[4];
		public @property final auto ref Pawn StoragePawn() { return *cast(Pawn*)(cast(size_t)&this + 0); }
		private ubyte __StoragePawn[4];
	}
	struct VehicleAnim
	{
		public @property final auto ref ScriptArray!(ScriptName) AnimSeqs() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 8); }
		private ubyte __AnimSeqs[12];
		public @property final auto ref ScriptName AnimPlayerName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __AnimPlayerName[8];
		public @property final bool bAnimLoopLastSeq() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bAnimLoopLastSeq(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bAnimLoopLastSeq[4];
		public @property final auto ref float AnimRate() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __AnimRate[4];
		// WARNING: Property 'AnimTag' has the same name as a defined type!
	}
	struct VehicleSound
	{
		public @property final auto ref SoundCue SoundTemplate() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
		private ubyte __SoundTemplate[4];
		public @property final auto ref ScriptName SoundEndTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __SoundEndTag[8];
		public @property final auto ref ScriptName SoundStartTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SoundStartTag[8];
	}
	struct DamageParamScales
	{
		public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Scale[4];
		public @property final auto ref ScriptName DamageParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __DamageParamName[8];
	}
	struct FDamageMorphTargets
	{
		public @property final auto ref ScriptArray!(ScriptName) DamagePropNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 36); }
		private ubyte __DamagePropNames[12];
		public @property final auto ref int Health() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __Health[4];
		public @property final auto ref ScriptName InfluenceBone() { return *cast(ScriptName*)(cast(size_t)&this + 24); }
		private ubyte __InfluenceBone[8];
		public @property final auto ref int LinkedMorphNodeIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __LinkedMorphNodeIndex[4];
		public @property final auto ref ScriptName LinkedMorphNodeName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		private ubyte __LinkedMorphNodeName[8];
		public @property final auto ref MorphNodeWeight MorphNode() { return *cast(MorphNodeWeight*)(cast(size_t)&this + 8); }
		private ubyte __MorphNode[4];
		public @property final auto ref ScriptName MorphNodeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __MorphNodeName[8];
	}
	struct VehicleEffect
	{
		public @property final auto ref ScriptName EffectSocket() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __EffectSocket[8];
		public @property final auto ref ParticleSystem EffectTemplate_Blue() { return *cast(ParticleSystem*)(cast(size_t)&this + 24); }
		private ubyte __EffectTemplate_Blue[4];
		public @property final auto ref ParticleSystem EffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 20); }
		private ubyte __EffectTemplate[4];
		public @property final bool bHighDetailOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
		public @property final bool bHighDetailOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		private ubyte __bHighDetailOnly[4];
		public @property final bool bRestartRunning() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bRestartRunning(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bRestartRunning[4];
		public @property final auto ref ScriptName EffectEndTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __EffectEndTag[8];
		public @property final auto ref ScriptName EffectStartTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __EffectStartTag[8];
	}
	struct WeaponEffectInfo
	{
		public @property final auto ref Vector Scale3D() { return *cast(Vector*)(cast(size_t)&this + 20); }
		private ubyte __Scale3D[12];
		public @property final auto ref Vector Offset() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __Offset[12];
		public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SocketName[8];
	}
	struct VehicleSeatAnimInfo
	{
		public @property final auto ref AnimTree SeatAnimTree() { return *cast(AnimTree*)(cast(size_t)&this + 16); }
		private ubyte __SeatAnimTree[4];
		public @property final auto ref AnimSet SeatAnimSet() { return *cast(AnimSet*)(cast(size_t)&this + 12); }
		private ubyte __SeatAnimSet[4];
		public @property final auto ref int TeamType() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __TeamType[4];
		public @property final auto ref int ArmorType() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ArmorType[4];
		public @property final bool bClearAnimSet() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bClearAnimSet(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bClearAnimSet[4];
		public @property final bool bIsFactionDependent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bIsFactionDependent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bIsFactionDependent[4];
		public @property final bool bIsArmorDependent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bIsArmorDependent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bIsArmorDependent[4];
	}
	public @property final bool bAllowedExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8000) != 0; }
	public @property final bool bAllowedExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8000; } return val; }
	public @property final bool bEjectKilledBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1) != 0; }
	public @property final bool bEjectKilledBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(UDKVehicle.BurnOutDatum) BurnOutMaterialInstances() { return *cast(ScriptArray!(UDKVehicle.BurnOutDatum)*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialSoundEffect) TireSoundList() { return *cast(ScriptArray!(UDKPawn.MaterialSoundEffect)*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialParticleEffect) WheelParticleEffects() { return *cast(ScriptArray!(UDKPawn.MaterialParticleEffect)*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref ScriptArray!(int) GroundEffectIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1648); }
	public @property final auto ref ScriptArray!(UDKVehicle.VehicleSeat) Seats() { return *cast(ScriptArray!(UDKVehicle.VehicleSeat)*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref ScriptArray!(UDKVehicle.VehicleAnim) VehicleAnims() { return *cast(ScriptArray!(UDKVehicle.VehicleAnim)*)(cast(size_t)cast(void*)this + 1704); }
	public @property final auto ref ScriptArray!(UDKVehicle.VehicleSound) VehicleSounds() { return *cast(ScriptArray!(UDKVehicle.VehicleSound)*)(cast(size_t)cast(void*)this + 1716); }
	public @property final auto ref ScriptArray!(UDKVehicle.DamageParamScales) DamageParamScaleLevels() { return *cast(ScriptArray!(UDKVehicle.DamageParamScales)*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref ScriptArray!(UDKSkelControl_Damage) DamageSkelControls() { return *cast(ScriptArray!(UDKSkelControl_Damage)*)(cast(size_t)cast(void*)this + 1780); }
	public @property final auto ref ScriptArray!(UDKVehicle.FDamageMorphTargets) DamageMorphTargets() { return *cast(ScriptArray!(UDKVehicle.FDamageMorphTargets)*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref ScriptArray!(UDKVehicle.VehicleEffect) VehicleEffects() { return *cast(ScriptArray!(UDKVehicle.VehicleEffect)*)(cast(size_t)cast(void*)this + 1860); }
	public @property final auto ref ScriptArray!(int) ContrailEffectIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1888); }
	public @property final auto ref ScriptArray!(UDKBot) Trackers() { return *cast(ScriptArray!(UDKBot)*)(cast(size_t)cast(void*)this + 1912); }
	public @property final auto ref Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1960); }
	public @property final auto ref float ShowLockedMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1956); }
	public @property final auto ref float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1952); }
	public @property final auto ref float TeamBeaconMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1948); }
	public @property final auto ref float MinRunOverWarningAim() { return *cast(float*)(cast(size_t)cast(void*)this + 1944); }
	public @property final auto ref float LastRunOverWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1940); }
	public @property final auto ref float MinRunOverSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1936); }
	public @property final auto ref float ResetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1932); }
	public @property final auto ref float ExtraReachDownThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1928); }
	public @property final auto ref ubyte Team() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1924); }
	public @property final auto ref float ObjectiveGetOutDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1908); }
	public @property final auto ref ScriptName ContrailColorParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1900); }
	public @property final auto ref ScriptName WaterEffectType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1880); }
	public @property final auto ref float LastJumpOutCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref Controller KillerController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref float LastTakeHitTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
	public @property final auto ref UDKPawn.UTTakeHitInfo LastTakeHitInfo() { return *cast(UDKPawn.UTTakeHitInfo*)(cast(size_t)cast(void*)this + 1812); }
	public @property final auto ref MaterialInstanceConstant DamageMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1764); }
	public @property final auto ref SoundCue SmallChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1760); }
	public @property final auto ref SoundCue MediumChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref SoundCue LargeChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1752); }
	public @property final auto ref float LastDeathImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref float TimeInDestroyablePenetration() { return *cast(float*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref float DestroyOnPenetrationDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
	public @property final auto ref float DestroyOnPenetrationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
	public @property final auto ref ScriptName DrivingAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref int SeatMask() { return *cast(int*)(cast(size_t)cast(void*)this + 1700); }
	public @property final auto ref Rotator WeaponRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1676); }
	public @property final auto ref ParticleSystem WaterGroundEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref ScriptName GroundEffectDistParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1664); }
	public @property final auto ref float MaxGroundEffectDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
	public @property final auto ref float AccumulatedWaterDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
	public @property final auto ref float WaterDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1640); }
	public @property final auto ref float OccupiedUpsideDownDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref float UpsideDownDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1632); }
	public @property final auto ref float AccruedFireDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1628); }
	public @property final auto ref float FireDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref float FireDamageThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
	public @property final auto ref float FlippedCount() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
	public @property final auto ref float LastCheckUpsideDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
	public @property final auto ref float MaxWheelEffectDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref ScriptName CurrentTireMaterial() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1584); }
	public @property final auto ref float RemainingBurn() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
	public @property final bool bForceSpinWarmup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800000) != 0; }
	public @property final bool bForceSpinWarmup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800000; } return val; }
	public @property final bool bGrab2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400000) != 0; }
	public @property final bool bGrab2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400000; } return val; }
	public @property final bool bGrab1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200000) != 0; }
	public @property final bool bGrab1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200000; } return val; }
	public @property final bool bTrickJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100000) != 0; }
	public @property final bool bTrickJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100000; } return val; }
	public @property final bool bDisableRepulsorsAtMaxFallSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80000) != 0; }
	public @property final bool bDisableRepulsorsAtMaxFallSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80000; } return val; }
	public @property final bool bTeamLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40000) != 0; }
	public @property final bool bTeamLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40000; } return val; }
	public @property final bool bShowLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20000) != 0; }
	public @property final bool bShowLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20000; } return val; }
	public @property final bool bUseAlternatePaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10000) != 0; }
	public @property final bool bUseAlternatePaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10000; } return val; }
	public @property final bool bFloatWhenDriven() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000) != 0; }
	public @property final bool bFloatWhenDriven(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000; } return val; }
	public @property final bool bJostleWhileDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000) != 0; }
	public @property final bool bJostleWhileDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000; } return val; }
	public @property final bool bDeadVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000) != 0; }
	public @property final bool bDeadVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000; } return val; }
	public @property final bool bIsInDestroyablePenetration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800) != 0; }
	public @property final bool bIsInDestroyablePenetration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800; } return val; }
	public @property final bool bTakeWaterDamageWhileDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400) != 0; }
	public @property final bool bTakeWaterDamageWhileDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400; } return val; }
	public @property final bool bIsScraping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200) != 0; }
	public @property final bool bIsScraping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200; } return val; }
	public @property final bool bEjectPassengersWhenFlipped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100) != 0; }
	public @property final bool bEjectPassengersWhenFlipped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100; } return val; }
	public @property final bool bIsBurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80) != 0; }
	public @property final bool bIsBurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80; } return val; }
	public @property final bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40) != 0; }
	public @property final bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40; } return val; }
	public @property final bool bNoZDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20) != 0; }
	public @property final bool bNoZDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20; } return val; }
	public @property final bool bNoZDampingInAir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10) != 0; }
	public @property final bool bNoZDampingInAir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10; } return val; }
	public @property final bool bFrontalCollisionWithFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8) != 0; }
	public @property final bool bFrontalCollisionWithFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8; } return val; }
	public @property final bool bFrontalCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4) != 0; }
	public @property final bool bFrontalCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4; } return val; }
	public @property final bool bHomingTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2) != 0; }
	public @property final bool bHomingTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2; } return val; }
	final bool OnTouchForcedDirVolume(UDKForcedDirectionVolume Vol)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKForcedDirectionVolume*)params.ptr = Vol;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34850], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35818], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final Rotator SeatWeaponRotation(int SeatIndex, Rotator NewRot, bool bReadValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Rotator*)&params[4] = NewRot;
		*cast(bool*)&params[16] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36035], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
	final Vector SeatFlashLocation(int SeatIndex, Vector NewLoc, bool bReadValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Vector*)&params[4] = NewLoc;
		*cast(bool*)&params[16] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36040], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	final ubyte SeatFlashCount(int SeatIndex, ubyte NewCount, bool bReadValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = NewCount;
		*cast(bool*)&params[8] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36045], params.ptr, cast(void*)0);
		return params[12];
	}
	final ubyte SeatFiringMode(int SeatIndex, ubyte NewFireMode, bool bReadValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = NewFireMode;
		*cast(bool*)&params[8] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36050], params.ptr, cast(void*)0);
		return params[12];
	}
	final void ForceWeaponRotation(int SeatIndex, Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Rotator*)&params[4] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36055], params.ptr, cast(void*)0);
	}
	final Vector GetSeatPivotPoint(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36058], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final int GetBarrelIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36061], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool IsSeatControllerReplicationViewer(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36064], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsLocalOnVehicle(Pawn InP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = InP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36067], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36073], params.ptr, cast(void*)0);
	}
	final void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36075], params.ptr, cast(void*)0);
	}
	final float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36077], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36080], cast(void*)0, cast(void*)0);
	}
	final void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36081], cast(void*)0, cast(void*)0);
	}
	final void JumpOutCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36082], cast(void*)0, cast(void*)0);
	}
	final float GetMaxRiseForce()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36083], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool CheckAutoDestruct(TeamInfo InstigatorTeam, float CheckRadius)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = InstigatorTeam;
		*cast(float*)&params[4] = CheckRadius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36085], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SelfDestruct(Actor ImpactedActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ImpactedActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36089], params.ptr, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36091], params.ptr, cast(void*)0);
		return params[0];
	}
	final void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36093], params.ptr, cast(void*)0);
	}
	final bool InUseableRange(UDKPlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UDKPlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36098], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36102], params.ptr, cast(void*)0);
	}
	final void InitDamageSkel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36104], cast(void*)0, cast(void*)0);
	}
	final void UpdateDamageMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36105], cast(void*)0, cast(void*)0);
	}
	final void ApplyMorphDamage(Vector HitLocation, int Damage, Vector Momentum)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = Damage;
		*cast(Vector*)&params[16] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36106], params.ptr, cast(void*)0);
	}
	final void MorphTargetDestroyed(int MorphNodeIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MorphNodeIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36110], params.ptr, cast(void*)0);
	}
	final void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36112], cast(void*)0, cast(void*)0);
	}
	final void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36113], cast(void*)0, cast(void*)0);
	}
	final void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36114], cast(void*)0, cast(void*)0);
	}
	final void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36115], cast(void*)0, cast(void*)0);
	}
	final void PostInitRigidBody(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PrimComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PrimComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36116], params.ptr, cast(void*)0);
	}
	final void UpdateHoverboardDustEffect(float DustHeight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DustHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36118], params.ptr, cast(void*)0);
	}
}
