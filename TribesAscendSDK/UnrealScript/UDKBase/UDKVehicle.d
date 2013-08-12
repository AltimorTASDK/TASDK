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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKVehicle")); }
	private static __gshared UDKVehicle mDefaultProperties;
	@property final static UDKVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKVehicle)("UDKVehicle UDKBase.Default__UDKVehicle")); }
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
			ScriptFunction OnTouchForcedDirVolume() { return mOnTouchForcedDirVolume ? mOnTouchForcedDirVolume : (mOnTouchForcedDirVolume = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.OnTouchForcedDirVolume")); }
			ScriptFunction GetRanOverDamageType() { return mGetRanOverDamageType ? mGetRanOverDamageType : (mGetRanOverDamageType = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetRanOverDamageType")); }
			ScriptFunction SeatWeaponRotation() { return mSeatWeaponRotation ? mSeatWeaponRotation : (mSeatWeaponRotation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SeatWeaponRotation")); }
			ScriptFunction SeatFlashLocation() { return mSeatFlashLocation ? mSeatFlashLocation : (mSeatFlashLocation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SeatFlashLocation")); }
			ScriptFunction SeatFlashCount() { return mSeatFlashCount ? mSeatFlashCount : (mSeatFlashCount = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SeatFlashCount")); }
			ScriptFunction SeatFiringMode() { return mSeatFiringMode ? mSeatFiringMode : (mSeatFiringMode = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SeatFiringMode")); }
			ScriptFunction ForceWeaponRotation() { return mForceWeaponRotation ? mForceWeaponRotation : (mForceWeaponRotation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.ForceWeaponRotation")); }
			ScriptFunction GetSeatPivotPoint() { return mGetSeatPivotPoint ? mGetSeatPivotPoint : (mGetSeatPivotPoint = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetSeatPivotPoint")); }
			ScriptFunction GetBarrelIndex() { return mGetBarrelIndex ? mGetBarrelIndex : (mGetBarrelIndex = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetBarrelIndex")); }
			ScriptFunction IsSeatControllerReplicationViewer() { return mIsSeatControllerReplicationViewer ? mIsSeatControllerReplicationViewer : (mIsSeatControllerReplicationViewer = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.IsSeatControllerReplicationViewer")); }
			ScriptFunction IsLocalOnVehicle() { return mIsLocalOnVehicle ? mIsLocalOnVehicle : (mIsLocalOnVehicle = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.IsLocalOnVehicle")); }
			ScriptFunction LockOnWarning() { return mLockOnWarning ? mLockOnWarning : (mLockOnWarning = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.LockOnWarning")); }
			ScriptFunction OnPropertyChange() { return mOnPropertyChange ? mOnPropertyChange : (mOnPropertyChange = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.OnPropertyChange")); }
			ScriptFunction GetGravityZ() { return mGetGravityZ ? mGetGravityZ : (mGetGravityZ = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetGravityZ")); }
			ScriptFunction PlayTakeHitEffects() { return mPlayTakeHitEffects ? mPlayTakeHitEffects : (mPlayTakeHitEffects = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.PlayTakeHitEffects")); }
			ScriptFunction ReceivedHealthChange() { return mReceivedHealthChange ? mReceivedHealthChange : (mReceivedHealthChange = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.ReceivedHealthChange")); }
			ScriptFunction JumpOutCheck() { return mJumpOutCheck ? mJumpOutCheck : (mJumpOutCheck = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.JumpOutCheck")); }
			ScriptFunction GetMaxRiseForce() { return mGetMaxRiseForce ? mGetMaxRiseForce : (mGetMaxRiseForce = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetMaxRiseForce")); }
			ScriptFunction CheckAutoDestruct() { return mCheckAutoDestruct ? mCheckAutoDestruct : (mCheckAutoDestruct = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.CheckAutoDestruct")); }
			ScriptFunction SelfDestruct() { return mSelfDestruct ? mSelfDestruct : (mSelfDestruct = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SelfDestruct")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.GetTeamNum")); }
			ScriptFunction NativePostRenderFor() { return mNativePostRenderFor ? mNativePostRenderFor : (mNativePostRenderFor = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.NativePostRenderFor")); }
			ScriptFunction InUseableRange() { return mInUseableRange ? mInUseableRange : (mInUseableRange = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.InUseableRange")); }
			ScriptFunction SetHUDLocation() { return mSetHUDLocation ? mSetHUDLocation : (mSetHUDLocation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.SetHUDLocation")); }
			ScriptFunction InitDamageSkel() { return mInitDamageSkel ? mInitDamageSkel : (mInitDamageSkel = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.InitDamageSkel")); }
			ScriptFunction UpdateDamageMaterial() { return mUpdateDamageMaterial ? mUpdateDamageMaterial : (mUpdateDamageMaterial = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.UpdateDamageMaterial")); }
			ScriptFunction ApplyMorphDamage() { return mApplyMorphDamage ? mApplyMorphDamage : (mApplyMorphDamage = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.ApplyMorphDamage")); }
			ScriptFunction MorphTargetDestroyed() { return mMorphTargetDestroyed ? mMorphTargetDestroyed : (mMorphTargetDestroyed = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.MorphTargetDestroyed")); }
			ScriptFunction RBPenetrationDestroy() { return mRBPenetrationDestroy ? mRBPenetrationDestroy : (mRBPenetrationDestroy = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.RBPenetrationDestroy")); }
			ScriptFunction TakeWaterDamage() { return mTakeWaterDamage ? mTakeWaterDamage : (mTakeWaterDamage = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.TakeWaterDamage")); }
			ScriptFunction CheckReset() { return mCheckReset ? mCheckReset : (mCheckReset = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.CheckReset")); }
			ScriptFunction TakeFireDamage() { return mTakeFireDamage ? mTakeFireDamage : (mTakeFireDamage = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.TakeFireDamage")); }
			ScriptFunction PostInitRigidBody() { return mPostInitRigidBody ? mPostInitRigidBody : (mPostInitRigidBody = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.PostInitRigidBody")); }
			ScriptFunction UpdateHoverboardDustEffect() { return mUpdateHoverboardDustEffect ? mUpdateHoverboardDustEffect : (mUpdateHoverboardDustEffect = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicle.UpdateHoverboardDustEffect")); }
		}
	}
	struct BurnOutDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.BurnOutDatum")); }
		@property final auto ref
		{
			float CurrValue() { return *cast(float*)(cast(size_t)&this + 4); }
			MaterialInstanceTimeVarying MITV() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)&this + 0); }
		}
	}
	struct VehicleSeat
	{
		private ubyte __buffer__[432];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.VehicleSeat")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptName) GunSocket() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 16); }
				ScriptArray!(ScriptName) GunPivotPoints() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 28); }
				ScriptArray!(UDKVehicle.WeaponEffectInfo) WeaponEffects() { return *cast(ScriptArray!(UDKVehicle.WeaponEffectInfo)*)(cast(size_t)&this + 56); }
				ScriptArray!(ScriptName) TurretControls() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 128); }
				ScriptArray!(UDKSkelControl_TurretConstrained) TurretControllers() { return *cast(ScriptArray!(UDKSkelControl_TurretConstrained)*)(cast(size_t)&this + 140); }
				ScriptArray!(UDKVehicle.VehicleSeatAnimInfo) m_SeatAnimInfo() { return *cast(ScriptArray!(UDKVehicle.VehicleSeatAnimInfo)*)(cast(size_t)&this + 324); }
				ScriptArray!(GameSkelCtrl_Recoil) m_TurretRecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)&this + 368); }
				ScriptArray!(ScriptName) m_TurretRecoilControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 380); }
				Rotator FlagRotation() { return *cast(Rotator*)(cast(size_t)&this + 416); }
				Vector FlagOffset() { return *cast(Vector*)(cast(size_t)&this + 404); }
				ScriptName FlagSocketName() { return *cast(ScriptName*)(cast(size_t)&this + 396); }
				float m_fTurnInterpSpeed() { return *cast(float*)(cast(size_t)&this + 392); }
				Vector m_vIdealExitLocation() { return *cast(Vector*)(cast(size_t)&this + 356); }
				Vector m_vRidingPassengerMeshOffset() { return *cast(Vector*)(cast(size_t)&this + 344); }
				float m_fViewYawLimit() { return *cast(float*)(cast(size_t)&this + 340); }
				UObject.Vector2D SeatIconPOS() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 316); }
				UDKVehicleMovementEffect SeatMovementEffect() { return *cast(UDKVehicleMovementEffect*)(cast(size_t)&this + 312); }
				float DriverDamageMult() { return *cast(float*)(cast(size_t)&this + 304); }
				ScriptClass ImpactFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)&this + 300); }
				ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)&this + 292); }
				ScriptName SeatSocket() { return *cast(ScriptName*)(cast(size_t)&this + 284); }
				Rotator SeatRotation() { return *cast(Rotator*)(cast(size_t)&this + 272); }
				Vector SeatOffset() { return *cast(Vector*)(cast(size_t)&this + 260); }
				ScriptName SeatBone() { return *cast(ScriptName*)(cast(size_t)&this + 252); }
				float ViewPitchMax() { return *cast(float*)(cast(size_t)&this + 244); }
				float ViewPitchMin() { return *cast(float*)(cast(size_t)&this + 240); }
				float CameraZoomOffset() { return *cast(float*)(cast(size_t)&this + 236); }
				Vector CameraZoomBaseOffset() { return *cast(Vector*)(cast(size_t)&this + 224); }
				ScriptName CameraZoomTag() { return *cast(ScriptName*)(cast(size_t)&this + 216); }
				float CameraEyeHeight() { return *cast(float*)(cast(size_t)&this + 212); }
				float CameraOffset() { return *cast(float*)(cast(size_t)&this + 208); }
				Vector CameraSafeOffset() { return *cast(Vector*)(cast(size_t)&this + 196); }
				Vector CameraBaseOffset() { return *cast(Vector*)(cast(size_t)&this + 184); }
				ScriptName CameraTag() { return *cast(ScriptName*)(cast(size_t)&this + 176); }
				float PivotFireOffsetZ() { return *cast(float*)(cast(size_t)&this + 168); }
				Actor AimTarget() { return *cast(Actor*)(cast(size_t)&this + 164); }
				Vector AimPoint() { return *cast(Vector*)(cast(size_t)&this + 152); }
				Rotator LastWeaponRotation() { return *cast(Rotator*)(cast(size_t)&this + 116); }
				UObject.Pointer FiringModeProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 112); }
				UObject.Pointer FlashCountProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 108); }
				UObject.Pointer FlashLocationProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 104); }
				UObject.Pointer WeaponRotationProperty() { return *cast(UObject.Pointer*)(cast(size_t)&this + 100); }
				ScriptName FiringModeName() { return *cast(ScriptName*)(cast(size_t)&this + 92); }
				ScriptName FlashCountName() { return *cast(ScriptName*)(cast(size_t)&this + 84); }
				ScriptName FlashLocationName() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
				ScriptName WeaponRotationName() { return *cast(ScriptName*)(cast(size_t)&this + 68); }
				ScriptString TurretVarPrefix() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
				int BarrelIndex() { return *cast(int*)(cast(size_t)&this + 40); }
				UDKWeapon Gun() { return *cast(UDKWeapon*)(cast(size_t)&this + 12); }
				ScriptClass GunClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
				Vehicle SeatPawn() { return *cast(Vehicle*)(cast(size_t)&this + 4); }
				Pawn StoragePawn() { return *cast(Pawn*)(cast(size_t)&this + 0); }
			}
			bool ValidFlagSeat() { return (*cast(uint*)(cast(size_t)&this + 428) & 0x1) != 0; }
			bool ValidFlagSeat(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 428) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 428) &= ~0x1; } return val; }
			bool m_bAttachPawnDirectly() { return (*cast(uint*)(cast(size_t)&this + 336) & 0x1) != 0; }
			bool m_bAttachPawnDirectly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 336) &= ~0x1; } return val; }
			bool bSeatVisible() { return (*cast(uint*)(cast(size_t)&this + 248) & 0x1) != 0; }
			bool bSeatVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 248) &= ~0x1; } return val; }
			bool bDisableOffsetZAdjust() { return (*cast(uint*)(cast(size_t)&this + 172) & 0x1) != 0; }
			bool bDisableOffsetZAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 172) &= ~0x1; } return val; }
		}
	}
	struct VehicleAnim
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.VehicleAnim")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptName) AnimSeqs() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 8); }
				ScriptName AnimPlayerName() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
				float AnimRate() { return *cast(float*)(cast(size_t)&this + 20); }
				// WARNING: Property 'AnimTag' has the same name as a defined type!
			}
			bool bAnimLoopLastSeq() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bAnimLoopLastSeq(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct VehicleSound
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.VehicleSound")); }
		@property final auto ref
		{
			SoundCue SoundTemplate() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
			ScriptName SoundEndTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName SoundStartTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct DamageParamScales
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.DamageParamScales")); }
		@property final auto ref
		{
			float Scale() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName DamageParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct FDamageMorphTargets
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.FDamageMorphTargets")); }
		@property final auto ref
		{
			ScriptArray!(ScriptName) DamagePropNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 36); }
			int Health() { return *cast(int*)(cast(size_t)&this + 32); }
			ScriptName InfluenceBone() { return *cast(ScriptName*)(cast(size_t)&this + 24); }
			int LinkedMorphNodeIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			ScriptName LinkedMorphNodeName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
			MorphNodeWeight MorphNode() { return *cast(MorphNodeWeight*)(cast(size_t)&this + 8); }
			ScriptName MorphNodeName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct VehicleEffect
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.VehicleEffect")); }
		@property final
		{
			auto ref
			{
				ScriptName EffectSocket() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
				ParticleSystem EffectTemplate_Blue() { return *cast(ParticleSystem*)(cast(size_t)&this + 24); }
				ParticleSystem EffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 20); }
				ScriptName EffectEndTag() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
				ScriptName EffectStartTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bHighDetailOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
			bool bHighDetailOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
			bool bRestartRunning() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bRestartRunning(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct WeaponEffectInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.WeaponEffectInfo")); }
		@property final auto ref
		{
			Vector Scale3D() { return *cast(Vector*)(cast(size_t)&this + 20); }
			Vector Offset() { return *cast(Vector*)(cast(size_t)&this + 8); }
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct VehicleSeatAnimInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicle.VehicleSeatAnimInfo")); }
		@property final
		{
			auto ref
			{
				AnimTree SeatAnimTree() { return *cast(AnimTree*)(cast(size_t)&this + 16); }
				AnimSet SeatAnimSet() { return *cast(AnimSet*)(cast(size_t)&this + 12); }
				int TeamType() { return *cast(int*)(cast(size_t)&this + 8); }
				int ArmorType() { return *cast(int*)(cast(size_t)&this + 4); }
			}
			bool bClearAnimSet() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bClearAnimSet(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bIsFactionDependent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bIsFactionDependent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bIsArmorDependent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bIsArmorDependent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKVehicle.BurnOutDatum) BurnOutMaterialInstances() { return *cast(ScriptArray!(UDKVehicle.BurnOutDatum)*)(cast(size_t)cast(void*)this + 1556); }
			ScriptArray!(UDKPawn.MaterialSoundEffect) TireSoundList() { return *cast(ScriptArray!(UDKPawn.MaterialSoundEffect)*)(cast(size_t)cast(void*)this + 1572); }
			ScriptArray!(UDKPawn.MaterialParticleEffect) WheelParticleEffects() { return *cast(ScriptArray!(UDKPawn.MaterialParticleEffect)*)(cast(size_t)cast(void*)this + 1596); }
			ScriptArray!(int) GroundEffectIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1648); }
			ScriptArray!(UDKVehicle.VehicleSeat) Seats() { return *cast(ScriptArray!(UDKVehicle.VehicleSeat)*)(cast(size_t)cast(void*)this + 1688); }
			ScriptArray!(UDKVehicle.VehicleAnim) VehicleAnims() { return *cast(ScriptArray!(UDKVehicle.VehicleAnim)*)(cast(size_t)cast(void*)this + 1704); }
			ScriptArray!(UDKVehicle.VehicleSound) VehicleSounds() { return *cast(ScriptArray!(UDKVehicle.VehicleSound)*)(cast(size_t)cast(void*)this + 1716); }
			ScriptArray!(UDKVehicle.DamageParamScales) DamageParamScaleLevels() { return *cast(ScriptArray!(UDKVehicle.DamageParamScales)*)(cast(size_t)cast(void*)this + 1768); }
			ScriptArray!(UDKSkelControl_Damage) DamageSkelControls() { return *cast(ScriptArray!(UDKSkelControl_Damage)*)(cast(size_t)cast(void*)this + 1780); }
			ScriptArray!(UDKVehicle.FDamageMorphTargets) DamageMorphTargets() { return *cast(ScriptArray!(UDKVehicle.FDamageMorphTargets)*)(cast(size_t)cast(void*)this + 1792); }
			ScriptArray!(UDKVehicle.VehicleEffect) VehicleEffects() { return *cast(ScriptArray!(UDKVehicle.VehicleEffect)*)(cast(size_t)cast(void*)this + 1860); }
			ScriptArray!(int) ContrailEffectIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1888); }
			ScriptArray!(UDKBot) Trackers() { return *cast(ScriptArray!(UDKBot)*)(cast(size_t)cast(void*)this + 1912); }
			Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1960); }
			float ShowLockedMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1956); }
			float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1952); }
			float TeamBeaconMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1948); }
			float MinRunOverWarningAim() { return *cast(float*)(cast(size_t)cast(void*)this + 1944); }
			float LastRunOverWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1940); }
			float MinRunOverSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1936); }
			float ResetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1932); }
			float ExtraReachDownThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1928); }
			ubyte Team() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1924); }
			float ObjectiveGetOutDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1908); }
			ScriptName ContrailColorParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1900); }
			ScriptName WaterEffectType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1880); }
			float LastJumpOutCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
			Controller KillerController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1872); }
			float LastTakeHitTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
			UDKPawn.UTTakeHitInfo LastTakeHitInfo() { return *cast(UDKPawn.UTTakeHitInfo*)(cast(size_t)cast(void*)this + 1812); }
			MaterialInstanceConstant DamageMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1804); }
			float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1764); }
			SoundCue SmallChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1760); }
			SoundCue MediumChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1756); }
			SoundCue LargeChunkImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1752); }
			float LastDeathImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1748); }
			float TimeInDestroyablePenetration() { return *cast(float*)(cast(size_t)cast(void*)this + 1744); }
			float DestroyOnPenetrationDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
			float DestroyOnPenetrationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
			ScriptName DrivingAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1728); }
			int SeatMask() { return *cast(int*)(cast(size_t)cast(void*)this + 1700); }
			Rotator WeaponRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1676); }
			ParticleSystem WaterGroundEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1672); }
			ScriptName GroundEffectDistParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1664); }
			float MaxGroundEffectDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
			float AccumulatedWaterDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
			float WaterDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1640); }
			float OccupiedUpsideDownDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1636); }
			float UpsideDownDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1632); }
			float AccruedFireDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1628); }
			float FireDamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
			float FireDamageThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
			float FlippedCount() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
			float LastCheckUpsideDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
			float MaxWheelEffectDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
			ScriptName CurrentTireMaterial() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1584); }
			float RemainingBurn() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
		}
		bool bAllowedExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8000) != 0; }
		bool bAllowedExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8000; } return val; }
		bool bEjectKilledBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1) != 0; }
		bool bEjectKilledBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1; } return val; }
		bool bForceSpinWarmup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800000) != 0; }
		bool bForceSpinWarmup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800000; } return val; }
		bool bGrab2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400000) != 0; }
		bool bGrab2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400000; } return val; }
		bool bGrab1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200000) != 0; }
		bool bGrab1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200000; } return val; }
		bool bTrickJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100000) != 0; }
		bool bTrickJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100000; } return val; }
		bool bDisableRepulsorsAtMaxFallSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80000) != 0; }
		bool bDisableRepulsorsAtMaxFallSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80000; } return val; }
		bool bTeamLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40000) != 0; }
		bool bTeamLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40000; } return val; }
		bool bShowLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20000) != 0; }
		bool bShowLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20000; } return val; }
		bool bUseAlternatePaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10000) != 0; }
		bool bUseAlternatePaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10000; } return val; }
		bool bFloatWhenDriven() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000) != 0; }
		bool bFloatWhenDriven(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000; } return val; }
		bool bJostleWhileDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000) != 0; }
		bool bJostleWhileDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000; } return val; }
		bool bDeadVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000) != 0; }
		bool bDeadVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000; } return val; }
		bool bIsInDestroyablePenetration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800) != 0; }
		bool bIsInDestroyablePenetration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800; } return val; }
		bool bTakeWaterDamageWhileDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400) != 0; }
		bool bTakeWaterDamageWhileDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400; } return val; }
		bool bIsScraping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200) != 0; }
		bool bIsScraping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200; } return val; }
		bool bEjectPassengersWhenFlipped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100) != 0; }
		bool bEjectPassengersWhenFlipped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100; } return val; }
		bool bIsBurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80) != 0; }
		bool bIsBurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80; } return val; }
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40; } return val; }
		bool bNoZDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20) != 0; }
		bool bNoZDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20; } return val; }
		bool bNoZDampingInAir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10) != 0; }
		bool bNoZDampingInAir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10; } return val; }
		bool bFrontalCollisionWithFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8) != 0; }
		bool bFrontalCollisionWithFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8; } return val; }
		bool bFrontalCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4) != 0; }
		bool bFrontalCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4; } return val; }
		bool bHomingTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2) != 0; }
		bool bHomingTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2; } return val; }
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
	Rotator SeatWeaponRotation(int SeatIndex, Rotator NewRot, bool bReadValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Rotator*)&params[4] = NewRot;
		*cast(bool*)&params[16] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatWeaponRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
	Vector SeatFlashLocation(int SeatIndex, Vector NewLoc, bool bReadValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Vector*)&params[4] = NewLoc;
		*cast(bool*)&params[16] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatFlashLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	ubyte SeatFlashCount(int SeatIndex, ubyte NewCount, bool bReadValue)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = NewCount;
		*cast(bool*)&params[8] = bReadValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatFlashCount, params.ptr, cast(void*)0);
		return params[12];
	}
	ubyte SeatFiringMode(int SeatIndex, ubyte NewFireMode, bool bReadValue)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = NewFireMode;
		*cast(bool*)&params[8] = bReadValue;
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
	bool IsLocalOnVehicle(Pawn InP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = InP;
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
