module UnrealScript.UDKBase.UDKVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKVehicle")); }
	private static __gshared UDKVehicle mDefaultProperties;
	@property final static UDKVehicle DefaultProperties() { mixin(MGDPC("UDKVehicle", "UDKVehicle UDKBase.Default__UDKVehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnTouchForcedDirVolume;
			ScriptFunction mGetRanOverDamageType;
			ScriptFunction mSeatWeaponRotation;
			ScriptFunction mSeatFlashLocation;
			ScriptFunction mSeatFlashCount;
			ScriptFunction mSeatFiringMode;
			ScriptFunction mForceWeaponRotation;
			ScriptFunction mGetSeatPivotPoint;
			ScriptFunction mGetBarrelIndex;
			ScriptFunction mIsSeatControllerReplicationViewer;
			ScriptFunction mIsLocalOnVehicle;
			ScriptFunction mLockOnWarning;
			ScriptFunction mOnPropertyChange;
			ScriptFunction mGetGravityZ;
			ScriptFunction mPlayTakeHitEffects;
			ScriptFunction mReceivedHealthChange;
			ScriptFunction mJumpOutCheck;
			ScriptFunction mGetMaxRiseForce;
			ScriptFunction mCheckAutoDestruct;
			ScriptFunction mSelfDestruct;
			ScriptFunction mGetTeamNum;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mInUseableRange;
			ScriptFunction mSetHUDLocation;
			ScriptFunction mInitDamageSkel;
			ScriptFunction mUpdateDamageMaterial;
			ScriptFunction mApplyMorphDamage;
			ScriptFunction mMorphTargetDestroyed;
			ScriptFunction mRBPenetrationDestroy;
			ScriptFunction mTakeWaterDamage;
			ScriptFunction mCheckReset;
			ScriptFunction mTakeFireDamage;
			ScriptFunction mPostInitRigidBody;
			ScriptFunction mUpdateHoverboardDustEffect;
		}
		public @property static final
		{
			ScriptFunction OnTouchForcedDirVolume() { mixin(MGF("mOnTouchForcedDirVolume", "Function UDKBase.UDKVehicle.OnTouchForcedDirVolume")); }
			ScriptFunction GetRanOverDamageType() { mixin(MGF("mGetRanOverDamageType", "Function UDKBase.UDKVehicle.GetRanOverDamageType")); }
			ScriptFunction SeatWeaponRotation() { mixin(MGF("mSeatWeaponRotation", "Function UDKBase.UDKVehicle.SeatWeaponRotation")); }
			ScriptFunction SeatFlashLocation() { mixin(MGF("mSeatFlashLocation", "Function UDKBase.UDKVehicle.SeatFlashLocation")); }
			ScriptFunction SeatFlashCount() { mixin(MGF("mSeatFlashCount", "Function UDKBase.UDKVehicle.SeatFlashCount")); }
			ScriptFunction SeatFiringMode() { mixin(MGF("mSeatFiringMode", "Function UDKBase.UDKVehicle.SeatFiringMode")); }
			ScriptFunction ForceWeaponRotation() { mixin(MGF("mForceWeaponRotation", "Function UDKBase.UDKVehicle.ForceWeaponRotation")); }
			ScriptFunction GetSeatPivotPoint() { mixin(MGF("mGetSeatPivotPoint", "Function UDKBase.UDKVehicle.GetSeatPivotPoint")); }
			ScriptFunction GetBarrelIndex() { mixin(MGF("mGetBarrelIndex", "Function UDKBase.UDKVehicle.GetBarrelIndex")); }
			ScriptFunction IsSeatControllerReplicationViewer() { mixin(MGF("mIsSeatControllerReplicationViewer", "Function UDKBase.UDKVehicle.IsSeatControllerReplicationViewer")); }
			ScriptFunction IsLocalOnVehicle() { mixin(MGF("mIsLocalOnVehicle", "Function UDKBase.UDKVehicle.IsLocalOnVehicle")); }
			ScriptFunction LockOnWarning() { mixin(MGF("mLockOnWarning", "Function UDKBase.UDKVehicle.LockOnWarning")); }
			ScriptFunction OnPropertyChange() { mixin(MGF("mOnPropertyChange", "Function UDKBase.UDKVehicle.OnPropertyChange")); }
			ScriptFunction GetGravityZ() { mixin(MGF("mGetGravityZ", "Function UDKBase.UDKVehicle.GetGravityZ")); }
			ScriptFunction PlayTakeHitEffects() { mixin(MGF("mPlayTakeHitEffects", "Function UDKBase.UDKVehicle.PlayTakeHitEffects")); }
			ScriptFunction ReceivedHealthChange() { mixin(MGF("mReceivedHealthChange", "Function UDKBase.UDKVehicle.ReceivedHealthChange")); }
			ScriptFunction JumpOutCheck() { mixin(MGF("mJumpOutCheck", "Function UDKBase.UDKVehicle.JumpOutCheck")); }
			ScriptFunction GetMaxRiseForce() { mixin(MGF("mGetMaxRiseForce", "Function UDKBase.UDKVehicle.GetMaxRiseForce")); }
			ScriptFunction CheckAutoDestruct() { mixin(MGF("mCheckAutoDestruct", "Function UDKBase.UDKVehicle.CheckAutoDestruct")); }
			ScriptFunction SelfDestruct() { mixin(MGF("mSelfDestruct", "Function UDKBase.UDKVehicle.SelfDestruct")); }
			ScriptFunction GetTeamNum() { mixin(MGF("mGetTeamNum", "Function UDKBase.UDKVehicle.GetTeamNum")); }
			ScriptFunction NativePostRenderFor() { mixin(MGF("mNativePostRenderFor", "Function UDKBase.UDKVehicle.NativePostRenderFor")); }
			ScriptFunction InUseableRange() { mixin(MGF("mInUseableRange", "Function UDKBase.UDKVehicle.InUseableRange")); }
			ScriptFunction SetHUDLocation() { mixin(MGF("mSetHUDLocation", "Function UDKBase.UDKVehicle.SetHUDLocation")); }
			ScriptFunction InitDamageSkel() { mixin(MGF("mInitDamageSkel", "Function UDKBase.UDKVehicle.InitDamageSkel")); }
			ScriptFunction UpdateDamageMaterial() { mixin(MGF("mUpdateDamageMaterial", "Function UDKBase.UDKVehicle.UpdateDamageMaterial")); }
			ScriptFunction ApplyMorphDamage() { mixin(MGF("mApplyMorphDamage", "Function UDKBase.UDKVehicle.ApplyMorphDamage")); }
			ScriptFunction MorphTargetDestroyed() { mixin(MGF("mMorphTargetDestroyed", "Function UDKBase.UDKVehicle.MorphTargetDestroyed")); }
			ScriptFunction RBPenetrationDestroy() { mixin(MGF("mRBPenetrationDestroy", "Function UDKBase.UDKVehicle.RBPenetrationDestroy")); }
			ScriptFunction TakeWaterDamage() { mixin(MGF("mTakeWaterDamage", "Function UDKBase.UDKVehicle.TakeWaterDamage")); }
			ScriptFunction CheckReset() { mixin(MGF("mCheckReset", "Function UDKBase.UDKVehicle.CheckReset")); }
			ScriptFunction TakeFireDamage() { mixin(MGF("mTakeFireDamage", "Function UDKBase.UDKVehicle.TakeFireDamage")); }
			ScriptFunction PostInitRigidBody() { mixin(MGF("mPostInitRigidBody", "Function UDKBase.UDKVehicle.PostInitRigidBody")); }
			ScriptFunction UpdateHoverboardDustEffect() { mixin(MGF("mUpdateHoverboardDustEffect", "Function UDKBase.UDKVehicle.UpdateHoverboardDustEffect")); }
		}
	}
	struct BurnOutDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.BurnOutDatum")); }
		@property final auto ref
		{
			float CurrValue() { mixin(MGPS("float", 4)); }
			MaterialInstanceTimeVarying MITV() { mixin(MGPS("MaterialInstanceTimeVarying", 0)); }
		}
	}
	struct VehicleSeat
	{
		private ubyte __buffer__[432];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.VehicleSeat")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptName) GunSocket() { mixin(MGPS("ScriptArray!(ScriptName)", 16)); }
				ScriptArray!(ScriptName) GunPivotPoints() { mixin(MGPS("ScriptArray!(ScriptName)", 28)); }
				ScriptArray!(UDKVehicle.WeaponEffectInfo) WeaponEffects() { mixin(MGPS("ScriptArray!(UDKVehicle.WeaponEffectInfo)", 56)); }
				ScriptArray!(ScriptName) TurretControls() { mixin(MGPS("ScriptArray!(ScriptName)", 128)); }
				ScriptArray!(UDKSkelControl_TurretConstrained) TurretControllers() { mixin(MGPS("ScriptArray!(UDKSkelControl_TurretConstrained)", 140)); }
				ScriptArray!(UDKVehicle.VehicleSeatAnimInfo) m_SeatAnimInfo() { mixin(MGPS("ScriptArray!(UDKVehicle.VehicleSeatAnimInfo)", 324)); }
				ScriptArray!(GameSkelCtrl_Recoil) m_TurretRecoilControls() { mixin(MGPS("ScriptArray!(GameSkelCtrl_Recoil)", 368)); }
				ScriptArray!(ScriptName) m_TurretRecoilControlNames() { mixin(MGPS("ScriptArray!(ScriptName)", 380)); }
				Rotator FlagRotation() { mixin(MGPS("Rotator", 416)); }
				Vector FlagOffset() { mixin(MGPS("Vector", 404)); }
				ScriptName FlagSocketName() { mixin(MGPS("ScriptName", 396)); }
				float m_fTurnInterpSpeed() { mixin(MGPS("float", 392)); }
				Vector m_vIdealExitLocation() { mixin(MGPS("Vector", 356)); }
				Vector m_vRidingPassengerMeshOffset() { mixin(MGPS("Vector", 344)); }
				float m_fViewYawLimit() { mixin(MGPS("float", 340)); }
				UObject.Vector2D SeatIconPOS() { mixin(MGPS("UObject.Vector2D", 316)); }
				UDKVehicleMovementEffect SeatMovementEffect() { mixin(MGPS("UDKVehicleMovementEffect", 312)); }
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SeatMotionAudio'!
				float DriverDamageMult() { mixin(MGPS("float", 304)); }
				ScriptClass ImpactFlashLightClass() { mixin(MGPS("ScriptClass", 300)); }
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MuzzleFlashLight'!
				ScriptClass MuzzleFlashLightClass() { mixin(MGPS("ScriptClass", 292)); }
				ScriptName SeatSocket() { mixin(MGPS("ScriptName", 284)); }
				Rotator SeatRotation() { mixin(MGPS("Rotator", 272)); }
				Vector SeatOffset() { mixin(MGPS("Vector", 260)); }
				ScriptName SeatBone() { mixin(MGPS("ScriptName", 252)); }
				float ViewPitchMax() { mixin(MGPS("float", 244)); }
				float ViewPitchMin() { mixin(MGPS("float", 240)); }
				float CameraZoomOffset() { mixin(MGPS("float", 236)); }
				Vector CameraZoomBaseOffset() { mixin(MGPS("Vector", 224)); }
				ScriptName CameraZoomTag() { mixin(MGPS("ScriptName", 216)); }
				float CameraEyeHeight() { mixin(MGPS("float", 212)); }
				float CameraOffset() { mixin(MGPS("float", 208)); }
				Vector CameraSafeOffset() { mixin(MGPS("Vector", 196)); }
				Vector CameraBaseOffset() { mixin(MGPS("Vector", 184)); }
				ScriptName CameraTag() { mixin(MGPS("ScriptName", 176)); }
				float PivotFireOffsetZ() { mixin(MGPS("float", 168)); }
				Actor AimTarget() { mixin(MGPS("Actor", 164)); }
				Vector AimPoint() { mixin(MGPS("Vector", 152)); }
				Rotator LastWeaponRotation() { mixin(MGPS("Rotator", 116)); }
				Pointer FiringModeProperty() { mixin(MGPS("Pointer", 112)); }
				Pointer FlashCountProperty() { mixin(MGPS("Pointer", 108)); }
				Pointer FlashLocationProperty() { mixin(MGPS("Pointer", 104)); }
				Pointer WeaponRotationProperty() { mixin(MGPS("Pointer", 100)); }
				ScriptName FiringModeName() { mixin(MGPS("ScriptName", 92)); }
				ScriptName FlashCountName() { mixin(MGPS("ScriptName", 84)); }
				ScriptName FlashLocationName() { mixin(MGPS("ScriptName", 76)); }
				ScriptName WeaponRotationName() { mixin(MGPS("ScriptName", 68)); }
				ScriptString TurretVarPrefix() { mixin(MGPS("ScriptString", 44)); }
				int BarrelIndex() { mixin(MGPS("int", 40)); }
				UDKWeapon Gun() { mixin(MGPS("UDKWeapon", 12)); }
				ScriptClass GunClass() { mixin(MGPS("ScriptClass", 8)); }
				Vehicle SeatPawn() { mixin(MGPS("Vehicle", 4)); }
				Pawn StoragePawn() { mixin(MGPS("Pawn", 0)); }
			}
			bool ValidFlagSeat() { mixin(MGBPS(428, 0x1)); }
			bool ValidFlagSeat(bool val) { mixin(MSBPS(428, 0x1)); }
			bool m_bAttachPawnDirectly() { mixin(MGBPS(336, 0x1)); }
			bool m_bAttachPawnDirectly(bool val) { mixin(MSBPS(336, 0x1)); }
			bool bSeatVisible() { mixin(MGBPS(248, 0x1)); }
			bool bSeatVisible(bool val) { mixin(MSBPS(248, 0x1)); }
			bool bDisableOffsetZAdjust() { mixin(MGBPS(172, 0x1)); }
			bool bDisableOffsetZAdjust(bool val) { mixin(MSBPS(172, 0x1)); }
		}
	}
	struct VehicleAnim
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.VehicleAnim")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptName) AnimSeqs() { mixin(MGPS("ScriptArray!(ScriptName)", 8)); }
				ScriptName AnimPlayerName() { mixin(MGPS("ScriptName", 28)); }
				float AnimRate() { mixin(MGPS("float", 20)); }
				// WARNING: Property 'AnimTag' has the same name as a defined type!
			}
			bool bAnimLoopLastSeq() { mixin(MGBPS(24, 0x1)); }
			bool bAnimLoopLastSeq(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	struct VehicleSound
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.VehicleSound")); }
		@property final auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SoundRef'!
			SoundCue SoundTemplate() { mixin(MGPS("SoundCue", 16)); }
			ScriptName SoundEndTag() { mixin(MGPS("ScriptName", 8)); }
			ScriptName SoundStartTag() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct DamageParamScales
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.DamageParamScales")); }
		@property final auto ref
		{
			float Scale() { mixin(MGPS("float", 8)); }
			ScriptName DamageParamName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct FDamageMorphTargets
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.FDamageMorphTargets")); }
		@property final auto ref
		{
			ScriptArray!(ScriptName) DamagePropNames() { mixin(MGPS("ScriptArray!(ScriptName)", 36)); }
			int Health() { mixin(MGPS("int", 32)); }
			ScriptName InfluenceBone() { mixin(MGPS("ScriptName", 24)); }
			int LinkedMorphNodeIndex() { mixin(MGPS("int", 20)); }
			ScriptName LinkedMorphNodeName() { mixin(MGPS("ScriptName", 12)); }
			MorphNodeWeight MorphNode() { mixin(MGPS("MorphNodeWeight", 8)); }
			ScriptName MorphNodeName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct VehicleEffect
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.VehicleEffect")); }
		@property final
		{
			auto ref
			{
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'EffectRef'!
				ScriptName EffectSocket() { mixin(MGPS("ScriptName", 28)); }
				ParticleSystem EffectTemplate_Blue() { mixin(MGPS("ParticleSystem", 24)); }
				ParticleSystem EffectTemplate() { mixin(MGPS("ParticleSystem", 20)); }
				ScriptName EffectEndTag() { mixin(MGPS("ScriptName", 8)); }
				ScriptName EffectStartTag() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bHighDetailOnly() { mixin(MGBPS(16, 0x2)); }
			bool bHighDetailOnly(bool val) { mixin(MSBPS(16, 0x2)); }
			bool bRestartRunning() { mixin(MGBPS(16, 0x1)); }
			bool bRestartRunning(bool val) { mixin(MSBPS(16, 0x1)); }
		}
	}
	struct WeaponEffectInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.WeaponEffectInfo")); }
		@property final auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Effect'!
			Vector Scale3D() { mixin(MGPS("Vector", 20)); }
			Vector Offset() { mixin(MGPS("Vector", 8)); }
			ScriptName SocketName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct VehicleSeatAnimInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicle.VehicleSeatAnimInfo")); }
		@property final
		{
			auto ref
			{
				AnimTree SeatAnimTree() { mixin(MGPS("AnimTree", 16)); }
				AnimSet SeatAnimSet() { mixin(MGPS("AnimSet", 12)); }
				int TeamType() { mixin(MGPS("int", 8)); }
				int ArmorType() { mixin(MGPS("int", 4)); }
			}
			bool bClearAnimSet() { mixin(MGBPS(0, 0x4)); }
			bool bClearAnimSet(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bIsFactionDependent() { mixin(MGBPS(0, 0x2)); }
			bool bIsFactionDependent(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bIsArmorDependent() { mixin(MGBPS(0, 0x1)); }
			bool bIsArmorDependent(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKVehicle.BurnOutDatum) BurnOutMaterialInstances() { mixin(MGPC("ScriptArray!(UDKVehicle.BurnOutDatum)", 1556)); }
			ScriptArray!(UDKPawn.MaterialSoundEffect) TireSoundList() { mixin(MGPC("ScriptArray!(UDKPawn.MaterialSoundEffect)", 1572)); }
			ScriptArray!(UDKPawn.MaterialParticleEffect) WheelParticleEffects() { mixin(MGPC("ScriptArray!(UDKPawn.MaterialParticleEffect)", 1596)); }
			ScriptArray!(int) GroundEffectIndices() { mixin(MGPC("ScriptArray!(int)", 1648)); }
			ScriptArray!(UDKVehicle.VehicleSeat) Seats() { mixin(MGPC("ScriptArray!(UDKVehicle.VehicleSeat)", 1688)); }
			ScriptArray!(UDKVehicle.VehicleAnim) VehicleAnims() { mixin(MGPC("ScriptArray!(UDKVehicle.VehicleAnim)", 1704)); }
			ScriptArray!(UDKVehicle.VehicleSound) VehicleSounds() { mixin(MGPC("ScriptArray!(UDKVehicle.VehicleSound)", 1716)); }
			ScriptArray!(UDKVehicle.DamageParamScales) DamageParamScaleLevels() { mixin(MGPC("ScriptArray!(UDKVehicle.DamageParamScales)", 1768)); }
			ScriptArray!(UDKSkelControl_Damage) DamageSkelControls() { mixin(MGPC("ScriptArray!(UDKSkelControl_Damage)", 1780)); }
			ScriptArray!(UDKVehicle.FDamageMorphTargets) DamageMorphTargets() { mixin(MGPC("ScriptArray!(UDKVehicle.FDamageMorphTargets)", 1792)); }
			ScriptArray!(UDKVehicle.VehicleEffect) VehicleEffects() { mixin(MGPC("ScriptArray!(UDKVehicle.VehicleEffect)", 1860)); }
			ScriptArray!(int) ContrailEffectIndices() { mixin(MGPC("ScriptArray!(int)", 1888)); }
			ScriptArray!(UDKBot) Trackers() { mixin(MGPC("ScriptArray!(UDKBot)", 1912)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'HoverboardDust'!
			Vector HUDLocation() { mixin(MGPC("Vector", 1960)); }
			float ShowLockedMaxDist() { mixin(MGPC("float", 1956)); }
			float LastPostRenderTraceTime() { mixin(MGPC("float", 1952)); }
			float TeamBeaconMaxDist() { mixin(MGPC("float", 1948)); }
			float MinRunOverWarningAim() { mixin(MGPC("float", 1944)); }
			float LastRunOverWarningTime() { mixin(MGPC("float", 1940)); }
			float MinRunOverSpeed() { mixin(MGPC("float", 1936)); }
			float ResetTime() { mixin(MGPC("float", 1932)); }
			float ExtraReachDownThreshold() { mixin(MGPC("float", 1928)); }
			ubyte Team() { mixin(MGPC("ubyte", 1924)); }
			float ObjectiveGetOutDist() { mixin(MGPC("float", 1908)); }
			ScriptName ContrailColorParameterName() { mixin(MGPC("ScriptName", 1900)); }
			ScriptName WaterEffectType() { mixin(MGPC("ScriptName", 1880)); }
			float LastJumpOutCheck() { mixin(MGPC("float", 1876)); }
			Controller KillerController() { mixin(MGPC("Controller", 1872)); }
			float LastTakeHitTimeout() { mixin(MGPC("float", 1856)); }
			UDKPawn.UTTakeHitInfo LastTakeHitInfo() { mixin(MGPC("UDKPawn.UTTakeHitInfo", 1812)); }
			MaterialInstanceConstant DamageMaterialInstance() { mixin(MGPC("MaterialInstanceConstant", 1804)); }
			float CustomGravityScaling() { mixin(MGPC("float", 1764)); }
			SoundCue SmallChunkImpactSound() { mixin(MGPC("SoundCue", 1760)); }
			SoundCue MediumChunkImpactSound() { mixin(MGPC("SoundCue", 1756)); }
			SoundCue LargeChunkImpactSound() { mixin(MGPC("SoundCue", 1752)); }
			float LastDeathImpactTime() { mixin(MGPC("float", 1748)); }
			float TimeInDestroyablePenetration() { mixin(MGPC("float", 1744)); }
			float DestroyOnPenetrationDuration() { mixin(MGPC("float", 1740)); }
			float DestroyOnPenetrationThreshold() { mixin(MGPC("float", 1736)); }
			ScriptName DrivingAnim() { mixin(MGPC("ScriptName", 1728)); }
			int SeatMask() { mixin(MGPC("int", 1700)); }
			Rotator WeaponRotation() { mixin(MGPC("Rotator", 1676)); }
			ParticleSystem WaterGroundEffect() { mixin(MGPC("ParticleSystem", 1672)); }
			ScriptName GroundEffectDistParameterName() { mixin(MGPC("ScriptName", 1664)); }
			float MaxGroundEffectDist() { mixin(MGPC("float", 1660)); }
			float AccumulatedWaterDamage() { mixin(MGPC("float", 1644)); }
			float WaterDamage() { mixin(MGPC("float", 1640)); }
			float OccupiedUpsideDownDamagePerSec() { mixin(MGPC("float", 1636)); }
			float UpsideDownDamagePerSec() { mixin(MGPC("float", 1632)); }
			float AccruedFireDamage() { mixin(MGPC("float", 1628)); }
			float FireDamagePerSec() { mixin(MGPC("float", 1624)); }
			float FireDamageThreshold() { mixin(MGPC("float", 1620)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ScrapeSound'!
			float FlippedCount() { mixin(MGPC("float", 1612)); }
			float LastCheckUpsideDownTime() { mixin(MGPC("float", 1608)); }
			float MaxWheelEffectDistSq() { mixin(MGPC("float", 1592)); }
			ScriptName CurrentTireMaterial() { mixin(MGPC("ScriptName", 1584)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'TireAudioComp'!
			float RemainingBurn() { mixin(MGPC("float", 1552)); }
		}
		bool bAllowedExit() { mixin(MGBPC(1548, 0x8000)); }
		bool bAllowedExit(bool val) { mixin(MSBPC(1548, 0x8000)); }
		bool bEjectKilledBodies() { mixin(MGBPC(1548, 0x1)); }
		bool bEjectKilledBodies(bool val) { mixin(MSBPC(1548, 0x1)); }
		bool bForceSpinWarmup() { mixin(MGBPC(1548, 0x800000)); }
		bool bForceSpinWarmup(bool val) { mixin(MSBPC(1548, 0x800000)); }
		bool bGrab2() { mixin(MGBPC(1548, 0x400000)); }
		bool bGrab2(bool val) { mixin(MSBPC(1548, 0x400000)); }
		bool bGrab1() { mixin(MGBPC(1548, 0x200000)); }
		bool bGrab1(bool val) { mixin(MSBPC(1548, 0x200000)); }
		bool bTrickJumping() { mixin(MGBPC(1548, 0x100000)); }
		bool bTrickJumping(bool val) { mixin(MSBPC(1548, 0x100000)); }
		bool bDisableRepulsorsAtMaxFallSpeed() { mixin(MGBPC(1548, 0x80000)); }
		bool bDisableRepulsorsAtMaxFallSpeed(bool val) { mixin(MSBPC(1548, 0x80000)); }
		bool bTeamLocked() { mixin(MGBPC(1548, 0x40000)); }
		bool bTeamLocked(bool val) { mixin(MSBPC(1548, 0x40000)); }
		bool bShowLocked() { mixin(MGBPC(1548, 0x20000)); }
		bool bShowLocked(bool val) { mixin(MSBPC(1548, 0x20000)); }
		bool bUseAlternatePaths() { mixin(MGBPC(1548, 0x10000)); }
		bool bUseAlternatePaths(bool val) { mixin(MSBPC(1548, 0x10000)); }
		bool bFloatWhenDriven() { mixin(MGBPC(1548, 0x4000)); }
		bool bFloatWhenDriven(bool val) { mixin(MSBPC(1548, 0x4000)); }
		bool bJostleWhileDriving() { mixin(MGBPC(1548, 0x2000)); }
		bool bJostleWhileDriving(bool val) { mixin(MSBPC(1548, 0x2000)); }
		bool bDeadVehicle() { mixin(MGBPC(1548, 0x1000)); }
		bool bDeadVehicle(bool val) { mixin(MSBPC(1548, 0x1000)); }
		bool bIsInDestroyablePenetration() { mixin(MGBPC(1548, 0x800)); }
		bool bIsInDestroyablePenetration(bool val) { mixin(MSBPC(1548, 0x800)); }
		bool bTakeWaterDamageWhileDriving() { mixin(MGBPC(1548, 0x400)); }
		bool bTakeWaterDamageWhileDriving(bool val) { mixin(MSBPC(1548, 0x400)); }
		bool bIsScraping() { mixin(MGBPC(1548, 0x200)); }
		bool bIsScraping(bool val) { mixin(MSBPC(1548, 0x200)); }
		bool bEjectPassengersWhenFlipped() { mixin(MGBPC(1548, 0x100)); }
		bool bEjectPassengersWhenFlipped(bool val) { mixin(MSBPC(1548, 0x100)); }
		bool bIsBurning() { mixin(MGBPC(1548, 0x80)); }
		bool bIsBurning(bool val) { mixin(MSBPC(1548, 0x80)); }
		bool bIsDisabled() { mixin(MGBPC(1548, 0x40)); }
		bool bIsDisabled(bool val) { mixin(MSBPC(1548, 0x40)); }
		bool bNoZDamping() { mixin(MGBPC(1548, 0x20)); }
		bool bNoZDamping(bool val) { mixin(MSBPC(1548, 0x20)); }
		bool bNoZDampingInAir() { mixin(MGBPC(1548, 0x10)); }
		bool bNoZDampingInAir(bool val) { mixin(MSBPC(1548, 0x10)); }
		bool bFrontalCollisionWithFixed() { mixin(MGBPC(1548, 0x8)); }
		bool bFrontalCollisionWithFixed(bool val) { mixin(MSBPC(1548, 0x8)); }
		bool bFrontalCollision() { mixin(MGBPC(1548, 0x4)); }
		bool bFrontalCollision(bool val) { mixin(MSBPC(1548, 0x4)); }
		bool bHomingTarget() { mixin(MGBPC(1548, 0x2)); }
		bool bHomingTarget(bool val) { mixin(MSBPC(1548, 0x2)); }
	}
final:
	bool OnTouchForcedDirVolume(UDKForcedDirectionVolume Vol)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKForcedDirectionVolume*)params.ptr = Vol;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTouchForcedDirVolume, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRanOverDamageType, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	Rotator SeatWeaponRotation(int SeatIndex, Rotator* NewRot = null, bool* bReadValue = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		if (NewRot !is null)
			*cast(Rotator*)&params[4] = *NewRot;
		if (bReadValue !is null)
			*cast(bool*)&params[16] = *bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatWeaponRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
	Vector SeatFlashLocation(int SeatIndex, Vector* NewLoc = null, bool* bReadValue = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		if (NewLoc !is null)
			*cast(Vector*)&params[4] = *NewLoc;
		if (bReadValue !is null)
			*cast(bool*)&params[16] = *bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatFlashLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	ubyte SeatFlashCount(int SeatIndex, ubyte* NewCount = null, bool* bReadValue = null)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		if (NewCount !is null)
			params[4] = *NewCount;
		if (bReadValue !is null)
			*cast(bool*)&params[8] = *bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatFlashCount, params.ptr, cast(void*)0);
		return params[12];
	}
	ubyte SeatFiringMode(int SeatIndex, ubyte* NewFireMode = null, bool* bReadValue = null)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		if (NewFireMode !is null)
			params[4] = *NewFireMode;
		if (bReadValue !is null)
			*cast(bool*)&params[8] = *bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatFiringMode, params.ptr, cast(void*)0);
		return params[12];
	}
	void ForceWeaponRotation(int SeatIndex, Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Rotator*)&params[4] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceWeaponRotation, params.ptr, cast(void*)0);
	}
	Vector GetSeatPivotPoint(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatPivotPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	int GetBarrelIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBarrelIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool IsSeatControllerReplicationViewer(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSeatControllerReplicationViewer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLocalOnVehicle(Pawn* InP = null)
	{
		ubyte params[8];
		params[] = 0;
		if (InP !is null)
			*cast(Pawn*)params.ptr = *InP;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalOnVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockOnWarning, params.ptr, cast(void*)0);
	}
	void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPropertyChange, params.ptr, cast(void*)0);
	}
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGravityZ, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTakeHitEffects, cast(void*)0, cast(void*)0);
	}
	void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedHealthChange, cast(void*)0, cast(void*)0);
	}
	void JumpOutCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.JumpOutCheck, cast(void*)0, cast(void*)0);
	}
	float GetMaxRiseForce()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxRiseForce, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CheckAutoDestruct(TeamInfo InstigatorTeam, float CheckRadius)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = InstigatorTeam;
		*cast(float*)&params[4] = CheckRadius;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckAutoDestruct, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SelfDestruct(Actor ImpactedActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ImpactedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SelfDestruct, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
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
	bool InUseableRange(UDKPlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UDKPlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.InUseableRange, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
	}
	void InitDamageSkel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitDamageSkel, cast(void*)0, cast(void*)0);
	}
	void UpdateDamageMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDamageMaterial, cast(void*)0, cast(void*)0);
	}
	void ApplyMorphDamage(Vector HitLocation, int Damage, Vector Momentum)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = Damage;
		*cast(Vector*)&params[16] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyMorphDamage, params.ptr, cast(void*)0);
	}
	void MorphTargetDestroyed(int MorphNodeIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MorphNodeIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.MorphTargetDestroyed, params.ptr, cast(void*)0);
	}
	void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RBPenetrationDestroy, cast(void*)0, cast(void*)0);
	}
	void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeWaterDamage, cast(void*)0, cast(void*)0);
	}
	void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReset, cast(void*)0, cast(void*)0);
	}
	void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFireDamage, cast(void*)0, cast(void*)0);
	}
	void PostInitRigidBody(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PrimComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PrimComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitRigidBody, params.ptr, cast(void*)0);
	}
	void UpdateHoverboardDustEffect(float DustHeight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DustHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHoverboardDustEffect, params.ptr, cast(void*)0);
	}
}
