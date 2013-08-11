module UnrealScript.TribesGame.TrPawn;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendByRidingPassenger;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrAnimNodeBlendByVehicle;
import UnrealScript.Engine.SVehicle;
import UnrealScript.TribesGame.TrEffectForm;
import UnrealScript.TribesGame.TrAnimNodeAimOffset;
import UnrealScript.TribesGame.TrEffect;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Material;
import UnrealScript.TribesGame.TrDeployable_DropJammer;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.TribesGame.TrPawnCollisionProxy;
import UnrealScript.Engine.MorphNodeWeight;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.TribesGame.TrValueModifier;
import UnrealScript.TribesGame.TrVehicle;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.AlienFXManager;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTWeaponAttachment;
import UnrealScript.Engine.Weapon;

extern(C++) interface TrPawn : UTPawn
{
public extern(D):
	enum
	{
		MAX_SCANNER_SEE_FLAG = 2,
		MAX_SCANNER_DISPLAY_FLAG = 3,
		MAX_MULTISHOT_LOCATIONS = 8,
		VELOCITY_HISTORY_SIZE = 3,
	}
	enum PhysicsType : ubyte
	{
		PhysType_SpeedCap = 0,
		PhysType_AccelCap = 1,
		PhysType_NoCap = 2,
		PhysType_MAX = 3,
	}
	enum WalkingDeceleration : ubyte
	{
		WalkingDeceleration_None = 0,
		WalkingDeceleration_A = 1,
		WalkingDeceleration_B = 2,
		WalkingDeceleration_C = 3,
		WalkingDeceleration_D = 4,
		WalkingDeceleration_E = 5,
		WalkingDeceleration_MAX = 6,
	}
	struct AssistInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			float m_fDamagerTime() { return *cast(float*)(cast(size_t)&this + 8); }
			int m_AccumulatedDamage() { return *cast(int*)(cast(size_t)&this + 4); }
			TrPlayerController m_Damager() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		}
	}
	struct FootstepParticleInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			ParticleSystem FootParticle() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct StickyGrenadeSocketInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			Vector ViewOffset() { return *cast(Vector*)(cast(size_t)&this + 16); }
			// WARNING: Property 'Projectile' has the same name as a defined type!
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			TrVehicle m_RidingVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 3096); }
			float m_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2320); }
			float m_fHeadShotDamageMultiple() { return *cast(float*)(cast(size_t)cast(void*)this + 2348); }
			float m_fCurrentAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 2540); }
			float m_fPawnViewForwardAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 2964); }
			TrAnimNodeBlendByRidingPassenger m_RidingPassengerBlendNode() { return *cast(TrAnimNodeBlendByRidingPassenger*)(cast(size_t)cast(void*)this + 2600); }
			TrAnimNodeAimOffset m_AimOffsetNode() { return *cast(TrAnimNodeAimOffset*)(cast(size_t)cast(void*)this + 2588); }
			TrAnimNodeAimOffset m_1pBodyAimOffsetNode() { return *cast(TrAnimNodeAimOffset*)(cast(size_t)cast(void*)this + 2592); }
			Vector r_FlashNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2228); }
			float m_fShowObjectThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2616); }
			ScriptArray!(TrEffect) m_AppliedEffects() { return *cast(ScriptArray!(TrEffect)*)(cast(size_t)cast(void*)this + 2476); }
			ScriptArray!(TrEffectForm) m_AppliedEffectForms() { return *cast(ScriptArray!(TrEffectForm)*)(cast(size_t)cast(void*)this + 2488); }
			ScriptArray!(TrPawn.AssistInfo) m_KillAssisters() { return *cast(ScriptArray!(TrPawn.AssistInfo)*)(cast(size_t)cast(void*)this + 2572); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 2752); }
			ScriptArray!(TrPawn) m_JammedFriends() { return *cast(ScriptArray!(TrPawn)*)(cast(size_t)cast(void*)this + 2776); }
			ScriptArray!(TrPawn) m_JammedEnemies() { return *cast(ScriptArray!(TrPawn)*)(cast(size_t)cast(void*)this + 2788); }
			ScriptArray!(TrPlayerReplicationInfo) m_FriendJammingList() { return *cast(ScriptArray!(TrPlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 2808); }
			ScriptArray!(TrDeployable_DropJammer) m_FriendlyDropJammerList() { return *cast(ScriptArray!(TrDeployable_DropJammer)*)(cast(size_t)cast(void*)this + 2832); }
			ScriptArray!(TrDeployable_DropJammer) m_EnemyDropJammerList() { return *cast(ScriptArray!(TrDeployable_DropJammer)*)(cast(size_t)cast(void*)this + 2844); }
			ScriptArray!(TrPawn.FootstepParticleInfo) m_SkiParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 2944); }
			ScriptArray!(TrPawn.StickyGrenadeSocketInfo) m_StickyGrenadeSocketList() { return *cast(ScriptArray!(TrPawn.StickyGrenadeSocketInfo)*)(cast(size_t)cast(void*)this + 2968); }
			ScriptArray!(Vector) m_aPreviousVelocities() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 3048); }
			ScriptArray!(Vector) m_aPreviousLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 3060); }
			ScriptArray!(float) m_aPreviousTickTimes() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 3072); }
			float m_TerrainWalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 3188); }
			float m_fSwapSkinDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 3184); }
			ScriptClass c_Pending1PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 3180); }
			ScriptClass c_Pending3PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 3176); }
			int m_nNetViewPitchCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3172); }
			float m_PitchInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 3168); }
			int m_nTargetRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3164); }
			int m_nPreviousReceivedRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3160); }
			int m_nSmoothedRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3156); }
			int m_nNetRotationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3152); }
			float m_RotationInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 3148); }
			Rotator m_TargetNetReceiveRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3136); }
			Rotator m_PreviousNetReceiveRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3124); }
			SkeletalMesh m_GibMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 3120); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 3116); }
			float m_fInventoryStationLockoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3112); }
			float m_fLastInventoryStationVisitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3108); }
			int m_nDetectedByEnemyScannerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3104); }
			UDKCarriedObject m_GameObjCheckTimer() { return *cast(UDKCarriedObject*)(cast(size_t)cast(void*)this + 3100); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3092); }
			MaterialInstanceConstant m_HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3088); }
			UTWeaponAttachment m_InHandWeaponAttachmentFromAutoFire() { return *cast(UTWeaponAttachment*)(cast(size_t)cast(void*)this + 3084); }
			float m_fLastTakeClotheslineDamageTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3044); }
			float m_fClotheslineSpeedDifferenceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3040); }
			float m_fClotheslineSpeedDifferenceMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3036); }
			float m_fClotheslineDamageMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3032); }
			float m_fClotheslineDamageMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3028); }
			float m_fSplatSpeedMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3024); }
			float m_fSplatSpeedMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3020); }
			float m_fSplatDamageFromWallMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3016); }
			float m_fSplatDamageFromWallMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3012); }
			float m_fSplatDamageFromLandMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3008); }
			float m_fSplatDamageFromLandMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3004); }
			float m_bJustLandedSpeedSq() { return *cast(float*)(cast(size_t)cast(void*)this + 3000); }
			float m_fRemainingSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2996); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2984); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2980); }
			float m_fGroundSkiEffectDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2956); }
			MaterialInstanceConstant m_InvulnerableOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2920); }
			Material m_InvulnerableOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2916); }
			MaterialInstanceConstant m_RageOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2912); }
			Material m_RageOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2908); }
			MaterialInstanceConstant m_JammerPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2904); }
			Material m_JammerPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2900); }
			MaterialInstanceConstant m_RegenPackPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2896); }
			Material m_RegenPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2892); }
			MaterialInstanceConstant m_RegenOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2888); }
			Material m_RegenOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2884); }
			float m_fShieldPackMaterialHitRampDownSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2880); }
			float m_fOverlayMaterialDeactivateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2876); }
			float m_fOverlayMaterialActivateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2872); }
			MaterialInstanceConstant m_ShieldPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2868); }
			Material m_ShieldPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2864); }
			float m_fForwardJettingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2860); }
			float m_fMaxJetpackBoostGroundspeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2856); }
			int r_nEnemyDropJammerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2828); }
			int r_nFriendlyDropJammerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2824); }
			int r_nEnemyJamCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2820); }
			TrPlayerReplicationInfo r_FriendJammingPRI() { return *cast(TrPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2804); }
			int m_JammingFriendTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 2800); }
			float m_fJamEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2772); }
			TrPawnCollisionProxy m_JammingCollisionProxy() { return *cast(TrPawnCollisionProxy*)(cast(size_t)cast(void*)this + 2768); }
			Material r_ReplicatedWeaponAttachmentMat() { return *cast(Material*)(cast(size_t)cast(void*)this + 2764); }
			float m_OldSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2748); }
			Vector r_avMultiShotLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2620); }
			float m_fEnemyShowDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2612); }
			float m_fFriendlyShowDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2608); }
			MorphNodeWeight m_OverlayMorphNode() { return *cast(MorphNodeWeight*)(cast(size_t)cast(void*)this + 2604); }
			TrAnimNodeBlendByVehicle m_VehicleBlendNode() { return *cast(TrAnimNodeBlendByVehicle*)(cast(size_t)cast(void*)this + 2596); }
			float m_fFallVelocityTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 2584); }
			float m_fLastDamagerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2568); }
			float m_fLastVehicleDamagerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2564); }
			float m_AssistDamagePercentQualifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2560); }
			float m_fSkiAccelPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2556); }
			float m_fSkiAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2552); }
			float m_fAirAccelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2548); }
			float m_fAirAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2544); }
			float m_fTerminalSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2536); }
			float m_fMaxSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2532); }
			float m_fSkiSlopeGravityBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 2528); }
			float m_fMaxSkiControlPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2524); }
			float m_fSkiControlSigmaSquare() { return *cast(float*)(cast(size_t)cast(void*)this + 2520); }
			float m_fPeakSkiControlSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2516); }
			TrObject.TrTakeEffectInfo r_LastTakeEffectInfo() { return *cast(TrObject.TrTakeEffectInfo*)(cast(size_t)cast(void*)this + 2500); }
			float ShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 2472); }
			TrObject.TR_HUD_INFO m_HudInfo() { return *cast(TrObject.TR_HUD_INFO*)(cast(size_t)cast(void*)this + 2404); }
			int r_nSensorAlertLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 2400); }
			float m_fDecelerationRateWithFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 2396); }
			float m_fMaxSpeedWithFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 2392); }
			float m_fPreserveVelocityZNormalThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2388); }
			float m_fPreserveVelocityThresholdMin() { return *cast(float*)(cast(size_t)cast(void*)this + 2384); }
			float m_fPreserveVelocityThresholdMax() { return *cast(float*)(cast(size_t)cast(void*)this + 2380); }
			float m_fMaxSpeedDecelerationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2376); }
			float m_fTerminalJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2372); }
			float m_fMaxJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2368); }
			float m_fAccelRateAtMaxThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2364); }
			float m_fMaxJetpackThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
			float m_fMaxStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2356); }
			float m_fStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2352); }
			float m_fHeadShotFudge() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
			float m_fTickedRegenDecimal() { return *cast(float*)(cast(size_t)cast(void*)this + 2340); }
			float m_fSecondsBeforeAutoHeal() { return *cast(float*)(cast(size_t)cast(void*)this + 2336); }
			float r_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2332); }
			float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2328); }
			float r_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2324); }
			float m_fTimeLastUntargetByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2316); }
			float m_fTimeLastTargetByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2312); }
			float m_fTimeLastUnseenByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2308); }
			float m_fTimeLastSeenByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2304); }
			float s_fVE() { return *cast(float*)(cast(size_t)cast(void*)this + 2300); }
			float m_fShieldMultiple() { return *cast(float*)(cast(size_t)cast(void*)this + 2296); }
			float r_fFasterWeaponSwitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
			float m_fPulseStealthIgnoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
			float m_fPulseStealthIgnoreTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2284); }
			float r_fPulseStealthSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
			float m_fPulseStealthFadeInInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2276); }
			float m_fPulseStealthVisibleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2272); }
			float m_fPulseStealthVisibleTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
			MaterialInstanceConstant m_StealthMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2264); }
			Material m_StealthMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2260); }
			float m_fMinStealthVisibilityParamValue() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
			float m_fDisableStealthVisibilityInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2252); }
			float m_fEnableStealthVisibilityInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2248); }
			AlienFXManager.FXOverlay LastFXOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 2247); }
			ubyte r_nWhiteOut() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2246); }
			TrObject.EMissileLock m_MissileLockStatus() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2245); }
			ubyte r_RemoteViewYaw() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2244); }
			TrPawn.PhysicsType PhysType() { return *cast(TrPawn.PhysicsType*)(cast(size_t)cast(void*)this + 2243); }
			int r_nFactionId() { return *cast(int*)(cast(size_t)cast(void*)this + 2208); }
			ubyte r_nBlinked() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2242); }
			ubyte r_nPulseStealth() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2241); }
			TrObject.EMissileLock r_MissileLock() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2240); }
			Actor r_LockedTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2224); }
			ScriptName m_nmMakeVisible() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2212); }
		}
		bool r_bIsStealthed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x4) != 0; }
		bool r_bIsStealthed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x4; } return val; }
		bool r_bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x100000) != 0; }
		bool r_bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x100000; } return val; }
		bool r_bIsSkiing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x800) != 0; }
		bool r_bIsSkiing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x800; } return val; }
		bool r_bIsJetting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x8000) != 0; }
		bool r_bIsJetting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x8000; } return val; }
		bool m_bUseSmoothNetReceiveRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1000000) != 0; }
		bool m_bUseSmoothNetReceiveRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1000000; } return val; }
		bool r_bDetectedByEnemyScanner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x800000) != 0; }
		bool r_bDetectedByEnemyScanner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x800000; } return val; }
		bool m_bSplattedAgainstWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x400000) != 0; }
		bool m_bSplattedAgainstWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x400000; } return val; }
		bool m_bIsInConduit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x200000) != 0; }
		bool m_bIsInConduit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x200000; } return val; }
		bool m_bUpdateStickyGrenades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x80000) != 0; }
		bool m_bUpdateStickyGrenades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x80000; } return val; }
		bool m_bLoadoutReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x40000) != 0; }
		bool m_bLoadoutReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x40000; } return val; }
		bool r_bIsJamming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x20000) != 0; }
		bool r_bIsJamming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x20000; } return val; }
		bool m_bIsJetEffectsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x10000) != 0; }
		bool m_bIsJetEffectsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x10000; } return val; }
		bool r_bAimingMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x4000) != 0; }
		bool r_bAimingMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x4000; } return val; }
		bool m_bIsPlayingSkiEffectsSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x2000) != 0; }
		bool m_bIsPlayingSkiEffectsSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x2000; } return val; }
		bool m_bIsPlayingSkiEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1000) != 0; }
		bool m_bIsPlayingSkiEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1000; } return val; }
		bool bInDeployModeClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x400) != 0; }
		bool bInDeployModeClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x400; } return val; }
		bool r_bInDeployMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x200) != 0; }
		bool r_bInDeployMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x200; } return val; }
		bool bInFireLockClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x100) != 0; }
		bool bInFireLockClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x100; } return val; }
		bool r_bInFireLock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x80) != 0; }
		bool r_bInFireLock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x80; } return val; }
		bool r_bIsHealthRecharging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x40) != 0; }
		bool r_bIsHealthRecharging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x40; } return val; }
		bool r_bIsShielded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x20) != 0; }
		bool r_bIsShielded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x20; } return val; }
		bool r_bIsRaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x10) != 0; }
		bool r_bIsRaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x10; } return val; }
		bool m_bStealthVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x8) != 0; }
		bool m_bStealthVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x8; } return val; }
		bool m_bRefreshInventoryWasRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x2) != 0; }
		bool m_bRefreshInventoryWasRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x2; } return val; }
		bool m_bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1) != 0; }
		bool m_bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1; } return val; }
	}
final:
	float GetCurrentPowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53713], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetMaxPowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53715], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int CalculatePawnSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53741], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptClass GetCurrCharClassInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67358], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67360], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	SkeletalMesh GetHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67375], params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)&params[4];
	}
	TrPlayerReplicationInfo GetTribesReplicationInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67392], params.ptr, cast(void*)0);
		return *cast(TrPlayerReplicationInfo*)params.ptr;
	}
	bool CheckHeadShot(Actor.ImpactInfo* Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = *Impact;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67478], params.ptr, cast(void*)0);
		*Impact = *cast(Actor.ImpactInfo*)params.ptr;
		return *cast(bool*)&params[80];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67611], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	TrHUD GetTrHud()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67877], params.ptr, cast(void*)0);
		return *cast(TrHUD*)params.ptr;
	}
	bool IsPulseStealthed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71985], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsJammedByFriendOrSelf()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71987], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CheckGrabSpeed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72429], cast(void*)0, cast(void*)0);
	}
	float NativeGetCollisionHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72430], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float NativeGetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72432], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SyncClientCurrentPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72434], cast(void*)0, cast(void*)0);
	}
	void ConsumePowerPool(float fAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72435], params.ptr, cast(void*)0);
	}
	void RegainPowerPool(float fDeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72437], params.ptr, cast(void*)0);
	}
	float GetPowerPoolPercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72439], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void GetCurrentDeviceAccuracyInfo(float* fAccuracy, float* fAmountCurrentlyOffOfTargetAccuray)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *fAccuracy;
		*cast(float*)&params[4] = *fAmountCurrentlyOffOfTargetAccuray;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72441], params.ptr, cast(void*)0);
		*fAccuracy = *cast(float*)params.ptr;
		*fAmountCurrentlyOffOfTargetAccuray = *cast(float*)&params[4];
	}
	void SetOverlayMaterial(MaterialInterface NewOverlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewOverlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72444], params.ptr, cast(void*)0);
	}
	bool ServerUpdateLockedTarget(Actor Locked)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Locked;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72446], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72449], params.ptr, cast(void*)0);
	}
	Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72454], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	void SetFlashNormal(Vector FlashNormal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = FlashNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72458], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72460], cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72461], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72463], params.ptr, cast(void*)0);
	}
	int GetCurrentCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72466], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72468], cast(void*)0, cast(void*)0);
	}
	int CurrentDeployedCount(ScriptClass DeviceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72469], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72476], cast(void*)0, cast(void*)0);
	}
	TrObject.EArmorType GetArmorType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72479], params.ptr, cast(void*)0);
		return *cast(TrObject.EArmorType*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72484], params.ptr, cast(void*)0);
	}
	void ReplicateMultiFlashLocation(int shotNumber, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = shotNumber;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72487], params.ptr, cast(void*)0);
	}
	void EquipBestPossibleDevice(TrObject.TR_EQUIP_POINT eqpPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = eqpPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72490], params.ptr, cast(void*)0);
	}
	void InitDefaultAnims(ScriptClass pInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72502], params.ptr, cast(void*)0);
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72507], params.ptr, cast(void*)0);
	}
	void ActivatePendingClass(bool bIsRespawn, bool bCallin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		*cast(bool*)&params[4] = bCallin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72540], params.ptr, cast(void*)0);
	}
	void RefreshInventoryTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72546], cast(void*)0, cast(void*)0);
	}
	void SetValuesFromCurrentFamilyInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72547], cast(void*)0, cast(void*)0);
	}
	void RefreshInventory(bool bIsRespawn, bool bCallin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		*cast(bool*)&params[4] = bCallin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72596], params.ptr, cast(void*)0);
	}
	void ActivateSelectedDeployable()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72631], cast(void*)0, cast(void*)0);
	}
	void RemoveEffectByClass(ScriptClass efClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = efClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72632], params.ptr, cast(void*)0);
	}
	void ProcessEffectForm(ScriptClass efClass, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = efClass;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72635], params.ptr, cast(void*)0);
	}
	int GetShieldStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72650], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void AdjustAmmoPool(float Change)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Change;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72652], params.ptr, cast(void*)0);
	}
	void AdjustMaxPowerPool(float Change)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Change;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72654], params.ptr, cast(void*)0);
	}
	void SetMaxPowerPool(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72656], params.ptr, cast(void*)0);
	}
	void SetMaxHealthPool(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72658], params.ptr, cast(void*)0);
	}
	void ClientUpdateHUDHealth(int NewHealth, int NewHealthMax)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewHealth;
		*cast(int*)&params[4] = NewHealthMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72660], params.ptr, cast(void*)0);
	}
	bool ShouldRechargePowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72664], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceHealthRegen()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72670], cast(void*)0, cast(void*)0);
	}
	void RechargeHealthPool(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72671], params.ptr, cast(void*)0);
	}
	Vector GetJetpackAirControl(Vector InAcceleration, Vector ZAxis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = InAcceleration;
		*cast(Vector*)&params[12] = ZAxis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72680], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	void UpdateSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72691], cast(void*)0, cast(void*)0);
	}
	void PlayJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72692], cast(void*)0, cast(void*)0);
	}
	void UpdateJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72693], cast(void*)0, cast(void*)0);
	}
	void StopJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72694], cast(void*)0, cast(void*)0);
	}
	void PlayLandingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72695], cast(void*)0, cast(void*)0);
	}
	void PlayJumpingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72696], cast(void*)0, cast(void*)0);
	}
	void RememberLastDamager(Controller Damager, int DamageAmount, Actor DamagingActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Damager;
		*cast(int*)&params[4] = DamageAmount;
		*cast(Actor*)&params[8] = DamagingActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72697], params.ptr, cast(void*)0);
	}
	float GetHealthPct()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72707], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	TrPawn.AssistInfo CreateAssistRecord(Controller Damager, int DamageAmount)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Damager;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72710], params.ptr, cast(void*)0);
		return *cast(TrPawn.AssistInfo*)&params[8];
	}
	TrPlayerController GetLastDamager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72715], params.ptr, cast(void*)0);
		return *cast(TrPlayerController*)params.ptr;
	}
	void ProcessKillAssists(Controller Killer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72720], params.ptr, cast(void*)0);
	}
	float GetUnshieldedDamage(float inputDamage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = inputDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72723], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	TrPawn GetPawnCausingDamage(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72731], params.ptr, cast(void*)0);
		return *cast(TrPawn*)&params[8];
	}
	float GetDamageScale(Actor DamageCauser, float Dist, ScriptClass dmgType, Controller EventInstigator, TrValueModifier VM, float* DamageScaleWithoutNewPlayerAssist)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageCauser;
		*cast(float*)&params[4] = Dist;
		*cast(ScriptClass*)&params[8] = dmgType;
		*cast(Controller*)&params[12] = EventInstigator;
		*cast(TrValueModifier*)&params[16] = VM;
		*cast(float*)&params[20] = *DamageScaleWithoutNewPlayerAssist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72737], params.ptr, cast(void*)0);
		*DamageScaleWithoutNewPlayerAssist = *cast(float*)&params[20];
		return *cast(float*)&params[24];
	}
	void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72753], params.ptr, cast(void*)0);
	}
	Controller CheckTribesTurretInstigator(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72758], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72762], params.ptr, cast(void*)0);
	}
	void PlayWhiteoutEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72800], cast(void*)0, cast(void*)0);
	}
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72810], params.ptr, cast(void*)0);
	}
	bool RecentlyGrabbedFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72847], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetShowDistanceThreshold(bool bIsEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72851], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72855], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72945], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72958], params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72964], cast(void*)0, cast(void*)0);
	}
	void PlayHardLandingEffect(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72965], params.ptr, cast(void*)0);
	}
	void PlaySonicPunchEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72967], cast(void*)0, cast(void*)0);
	}
	void TakeFallDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72968], params.ptr, cast(void*)0);
	}
	void ProcessCreditEvent(TrObject.TrCreditEventType EventType, bool bProxyEvent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TrCreditEventType*)params.ptr = EventType;
		*cast(bool*)&params[4] = bProxyEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72973], params.ptr, cast(void*)0);
	}
	void FlashLocationUpdated(Weapon InWeapon, Vector InFlashLocation, bool bViaReplication)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = InFlashLocation;
		*cast(bool*)&params[16] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72976], params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72980], params.ptr, cast(void*)0);
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72984], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PerformDodge(Actor.EDoubleClickDir DoubleClickMove, Vector Dir, Vector Cross)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		*cast(Vector*)&params[4] = Dir;
		*cast(Vector*)&params[16] = Cross;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72987], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72992], params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72994], params.ptr, cast(void*)0);
	}
	bool ShouldGib(ScriptClass pUTDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72996], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72999], params.ptr, cast(void*)0);
	}
	void PlayDamageCameraShake()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73001], cast(void*)0, cast(void*)0);
	}
	bool IsLastHitFromNinjaSmoke()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73006], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73008], cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73017], params.ptr, cast(void*)0);
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73020], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void StopLocalEffectsAndSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73033], cast(void*)0, cast(void*)0);
	}
	void SetOverlayMeshHidden(bool bNewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHidden;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73034], params.ptr, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73036], params.ptr, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73058], cast(void*)0, cast(void*)0);
	}
	void UpdateTeamBlockerMaterials()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73061], cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73063], params.ptr, cast(void*)0);
	}
	void ResetSkin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73067], cast(void*)0, cast(void*)0);
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73068], params.ptr, cast(void*)0);
	}
	void InitializeOverlayMaterials()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73072], cast(void*)0, cast(void*)0);
	}
	void ClientPlayHealthRegenEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73074], cast(void*)0, cast(void*)0);
	}
	void SetShieldPackActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73078], params.ptr, cast(void*)0);
	}
	void PlayShieldPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73080], cast(void*)0, cast(void*)0);
	}
	void SetStealthPackActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73084], params.ptr, cast(void*)0);
	}
	void PlayStealthPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73086], cast(void*)0, cast(void*)0);
	}
	void PulseStealth(bool bOverrideIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOverrideIgnore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73090], params.ptr, cast(void*)0);
	}
	void SetRagePerkActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73092], cast(void*)0, cast(void*)0);
	}
	void ClearRagePerk()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73101], cast(void*)0, cast(void*)0);
	}
	void PlayRageEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73105], cast(void*)0, cast(void*)0);
	}
	void PlayInvulnerabilityEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73110], cast(void*)0, cast(void*)0);
	}
	void StartRidingInVehicle(TrVehicle V, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73111], params.ptr, cast(void*)0);
	}
	void StopRidingInVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73118], cast(void*)0, cast(void*)0);
	}
	void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73123], params.ptr, cast(void*)0);
	}
	void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73126], params.ptr, cast(void*)0);
	}
	void OnRanOver(SVehicle pVehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = pVehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73133], params.ptr, cast(void*)0);
	}
	void EnableJamming()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73141], cast(void*)0, cast(void*)0);
	}
	void DisableJamming()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73146], cast(void*)0, cast(void*)0);
	}
	void DisableJammingOtherPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73147], cast(void*)0, cast(void*)0);
	}
	void EnteredFriendJammingRadius(TrPawn JammingFriend)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = JammingFriend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73148], params.ptr, cast(void*)0);
	}
	void ExitFriendJammingRadius(TrPawn JammingFriend)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = JammingFriend;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73153], params.ptr, cast(void*)0);
	}
	void EnteredEnemyJammingRadius()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73156], cast(void*)0, cast(void*)0);
	}
	void ExitEnemyJammingRadius()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73157], cast(void*)0, cast(void*)0);
	}
	bool IsJammedByEnemy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73158], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayJammerPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73160], cast(void*)0, cast(void*)0);
	}
	void PlayJammingByFriendEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73163], cast(void*)0, cast(void*)0);
	}
	void PlayEnemyJammerPackEffect(bool enteredJammingRadius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = enteredJammingRadius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73166], params.ptr, cast(void*)0);
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73171], params.ptr, cast(void*)0);
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73174], params.ptr, cast(void*)0);
	}
	void OnEnteredDropJammer(TrDeployable_DropJammer DropJammer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable_DropJammer*)params.ptr = DropJammer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73177], params.ptr, cast(void*)0);
	}
	void OnExitedDropJammer(TrDeployable_DropJammer DropJammer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable_DropJammer*)params.ptr = DropJammer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73179], params.ptr, cast(void*)0);
	}
	void UpdateEnemyDropJammer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73181], cast(void*)0, cast(void*)0);
	}
	void UpdateFriendlyDropJammer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73182], cast(void*)0, cast(void*)0);
	}
	void PlayJammingByEnemyDropJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73183], cast(void*)0, cast(void*)0);
	}
	void PlayJammingByFriendlyDropJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73187], cast(void*)0, cast(void*)0);
	}
	void OnChangeJammingTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73190], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73199], cast(void*)0, cast(void*)0);
	}
	void SetMeshVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73200], params.ptr, cast(void*)0);
	}
	void SetFirstPersonBodyVisibility(bool bHide)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73203], params.ptr, cast(void*)0);
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73206], cast(void*)0, cast(void*)0);
	}
	void ForceCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73207], cast(void*)0, cast(void*)0);
	}
	int FindClosestStickyGrenadeSocketIndex(Vector ProjectileLocation, bool bOnlyFindAvailableSlots)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileLocation;
		*cast(bool*)&params[12] = bOnlyFindAvailableSlots;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73208], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	void StickGrenadeToPawn(TrProjectile pProjectile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = pProjectile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73218], params.ptr, cast(void*)0);
	}
	void UpdateStickyGrenades(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73222], params.ptr, cast(void*)0);
	}
	void SetSkiing(bool bEnabled, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73224], params.ptr, cast(void*)0);
	}
	void PlaySkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73230], cast(void*)0, cast(void*)0);
	}
	void StopSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73231], cast(void*)0, cast(void*)0);
	}
	void PlaySkiEffectsSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73232], cast(void*)0, cast(void*)0);
	}
	void StopSkiEffectsSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73233], cast(void*)0, cast(void*)0);
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73234], params.ptr, cast(void*)0);
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73237], cast(void*)0, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73238], params.ptr, cast(void*)0);
	}
	void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73244], params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	void GoInvulnerable(float InvulnerableTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InvulnerableTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73253], params.ptr, cast(void*)0);
	}
	void ClearInvulnerability()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73255], cast(void*)0, cast(void*)0);
	}
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73256], cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73257], params.ptr, cast(void*)0);
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73261], params.ptr, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73264], cast(void*)0, cast(void*)0);
	}
	void SetDetectedByEnemyScanner(bool detected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73265], params.ptr, cast(void*)0);
	}
	bool GetDetectedByEnemyScanner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73267], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetScannerDetect(bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptClass GetFamilyInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73272], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void LockedOutFromFlagPickupTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73275], cast(void*)0, cast(void*)0);
	}
	void LockFromFlagPickup(float TimeToLock)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeToLock;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73276], params.ptr, cast(void*)0);
	}
	void Blink(Vector Impulse, float MinZ, float PctEffectiveness)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		*cast(float*)&params[12] = MinZ;
		*cast(float*)&params[16] = PctEffectiveness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73278], params.ptr, cast(void*)0);
	}
	void PlayBlinkPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73285], cast(void*)0, cast(void*)0);
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73290], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckClotheslineDamage(Pawn PawnHittingMe)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = PawnHittingMe;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73293], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73315], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73317], params.ptr, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73319], params.ptr, cast(void*)0);
	}
	void SetPending3PSkin(ScriptClass NewPendingSkin)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewPendingSkin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73324], params.ptr, cast(void*)0);
	}
	void CheckApplyPending3PSkin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73326], cast(void*)0, cast(void*)0);
	}
	void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73343], params.ptr, cast(void*)0);
	}
	void ThrowWeaponOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73345], cast(void*)0, cast(void*)0);
	}
	void ClearSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73360], cast(void*)0, cast(void*)0);
	}
	void ClearJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73361], cast(void*)0, cast(void*)0);
	}
	void AlienFXOverlay(AlienFXManager.FXOverlay Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXOverlay*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73362], params.ptr, cast(void*)0);
	}
}
