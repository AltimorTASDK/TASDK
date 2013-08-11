module UnrealScript.Engine.Pawn;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.LadderVolume;
import UnrealScript.Engine.SeqAct_AssignController;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.PathGoalEvaluator;
import UnrealScript.Engine.PathConstraint;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.SeqAct_GiveInventory;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Pylon;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.SeqAct_PlayFaceFXAnim;
import UnrealScript.Engine.Weapon;

extern(C++) interface Pawn : Actor
{
	enum EPathSearchType : ubyte
	{
		PST_Default = 0,
		PST_Breadth = 1,
		PST_NewBestPathTo = 2,
		PST_Constraint = 3,
		PST_MAX = 4,
	}
	struct ScalarParameterInterpStruct
	{
		public @property final auto ref float WarmupTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __WarmupTime[4];
		public @property final auto ref float InterpTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __InterpTime[4];
		public @property final auto ref float ParameterValue() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ParameterValue[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	struct LastHitInfoStruct
	{
		public @property final auto ref ScriptClass Type() { return *cast(ScriptClass*)(cast(size_t)&this + 16); }
		private ubyte __Type[4];
		public @property final auto ref Actor Causer() { return *cast(Actor*)(cast(size_t)&this + 12); }
		private ubyte __Causer[4];
		public @property final auto ref float Distance() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Distance[4];
		public @property final auto ref float Amount() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Amount[4];
		public @property final bool bDirectHit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDirectHit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDirectHit[4];
	}
	// WARNING: Property 'Controller' has the same name as a defined type!
	public @property final auto ref int MaxPitchLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
	// WARNING: Property 'Weapon' has the same name as a defined type!
	public @property final auto ref InventoryManager InvManager() { return *cast(InventoryManager*)(cast(size_t)cast(void*)this + 980); }
	public @property final bool bIsWalking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4) != 0; }
	public @property final bool bIsWalking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4; } return val; }
	public @property final auto ref float EyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref float BaseEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 752); }
	public @property final bool bForceRMVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100000) != 0; }
	public @property final bool bForceRMVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100000; } return val; }
	public @property final auto ref Vector Floor() { return *cast(Vector*)(cast(size_t)cast(void*)this + 732); }
	public @property final bool bRootMotionFromInterpCurve() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000000) != 0; }
	public @property final bool bRootMotionFromInterpCurve(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000000; } return val; }
	public @property final auto ref float CrouchHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final bool bIsCrouched() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10) != 0; }
	public @property final bool bIsCrouched(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10; } return val; }
	public @property final auto ref float MaxStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool bForceMaxAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20000) != 0; }
	public @property final bool bForceMaxAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20000; } return val; }
	public @property final auto ref float VehicleCheckRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref float LastStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref PhysicsVolume HeadVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref float BreathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref float UnderWaterTime() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref ScriptName WaterMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref ScriptName LandMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref float AccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref Actor.EPhysics WalkingPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref LadderVolume OnLadder() { return *cast(LadderVolume*)(cast(size_t)cast(void*)this + 864); }
	public @property final bool bUpAndOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2) != 0; }
	public @property final bool bUpAndOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2; } return val; }
	public @property final auto ref float OutofWaterZ() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref NavigationPoint Anchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref ScriptArray!(AnimNodeSlot) SlotNodes() { return *cast(ScriptArray!(AnimNodeSlot)*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref ScriptArray!(InterpGroup) InterpGroupList() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { return *cast(ScriptArray!(Pawn.ScalarParameterInterpStruct)*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref Pawn.LastHitInfoStruct LastHitInfo() { return *cast(Pawn.LastHitInfoStruct*)(cast(size_t)cast(void*)this + 1124); }
	public @property final auto ref Vector RootMotionInterpCurveLastValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref float RootMotionInterpCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
	public @property final auto ref float RootMotionInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref EngineTypes.RootMotionCurve RootMotionInterpCurve() { return *cast(EngineTypes.RootMotionCurve*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref MaterialInstanceConstant MIC_PawnHair() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref MaterialInstanceConstant MIC_PawnMat() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref int FailedLandingCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1024); }
	public @property final auto ref RB_BodyInstance PhysicsPushBody() { return *cast(RB_BodyInstance*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref int ShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref Vector LastFiringFlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref Vector FlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref ScriptClass InventoryManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 976); }
	public @property final auto ref Rotator DesiredRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 964); }
	public @property final auto ref int AllowedYawError() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref float ViewPitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref float ViewPitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref Controller LastHitBy() { return *cast(Controller*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref float AlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref Vehicle DrivenVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref float RBPushStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref float RBPushRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref Vector TearOffMomentum() { return *cast(Vector*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref ScriptClass HitDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref Vector TakeHitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref PlayerStart LastStartSpot() { return *cast(PlayerStart*)(cast(size_t)cast(void*)this + 884); }
	// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
	public @property final auto ref ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref float DamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref float SoundDampening() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float noise2loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref Pawn noise2other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float noise2time() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref Vector noise2spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float noise1loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref Pawn noise1other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref float noise1time() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref Vector noise1spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref Vector RMVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float KismetDeathDelayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref float LastPainTime() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref int HealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref float SplashTime() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref float AIMaxFallSpeedFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref float MaxFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref float CrouchedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float MovementSpeedModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref float WalkingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref float AirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref float MaxOutOfWaterStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref float JumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref float LadderSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref float AirSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref float WaterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref float GroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref float SpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref float SerpentineTime() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref float SerpentineDist() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref Vector SerpentineDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float NextPathRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref float DestinationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref float LastValidAnchorTime() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref float FindAnchorFailedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref NavigationPoint LastAnchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref int AnchorItem() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref float MeleeRange() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float Buoyancy() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float Mass() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float AvgPhysicsTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float PeripheralVision() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float SightRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float Alertness() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float HearingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float MaxDesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float DesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref PathGoalEvaluator PathGoalList() { return *cast(PathGoalEvaluator*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref PathConstraint PathConstraintList() { return *cast(PathConstraint*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float NonPreferredVehiclePathMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref int FullHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float CrouchRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float UncrouchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ubyte FiringMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ubyte FlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 539); }
	public @property final auto ref ubyte RemoteViewPitch() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 538); }
	public @property final auto ref Pawn.EPathSearchType PathSearchType() { return *cast(Pawn.EPathSearchType*)(cast(size_t)cast(void*)this + 537); }
	public @property final auto ref UObject.Pointer VfTable_IInterface_Speaker() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
	public @property final bool bDebugShowCameraLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000000) != 0; }
	public @property final bool bDebugShowCameraLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000000; } return val; }
	public @property final bool bNeedsBaseTickedFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000000) != 0; }
	public @property final bool bNeedsBaseTickedFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000000; } return val; }
	public @property final bool bUnlockWhenReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000000) != 0; }
	public @property final bool bUnlockWhenReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000000; } return val; }
	public @property final bool bLockDesiredRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000000) != 0; }
	public @property final bool bLockDesiredRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000000; } return val; }
	public @property final bool bDesiredRotationSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800000) != 0; }
	public @property final bool bDesiredRotationSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800000; } return val; }
	public @property final bool bPlayedDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400000) != 0; }
	public @property final bool bPlayedDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400000; } return val; }
	public @property final bool bForceRegularVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200000) != 0; }
	public @property final bool bForceRegularVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200000; } return val; }
	public @property final bool bReplicateHealthToAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80000) != 0; }
	public @property final bool bReplicateHealthToAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80000; } return val; }
	public @property final bool bLimitFallAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40000) != 0; }
	public @property final bool bLimitFallAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40000; } return val; }
	public @property final bool bRunPhysicsWithNoController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000) != 0; }
	public @property final bool bRunPhysicsWithNoController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000; } return val; }
	public @property final bool bPathfindsAsVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000) != 0; }
	public @property final bool bPathfindsAsVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000; } return val; }
	public @property final bool bModifyNavPointDest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000) != 0; }
	public @property final bool bModifyNavPointDest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000; } return val; }
	public @property final bool bModifyReachSpecCost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000) != 0; }
	public @property final bool bModifyReachSpecCost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000; } return val; }
	public @property final bool bNoWeaponFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000) != 0; }
	public @property final bool bNoWeaponFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000; } return val; }
	public @property final bool bCachedRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800) != 0; }
	public @property final bool bCachedRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800; } return val; }
	public @property final bool bStationary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400) != 0; }
	public @property final bool bStationary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400; } return val; }
	public @property final bool bRollToDesired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200) != 0; }
	public @property final bool bRollToDesired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200; } return val; }
	public @property final bool bDontPossess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100) != 0; }
	public @property final bool bDontPossess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100; } return val; }
	public @property final bool bMuffledHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
	public @property final bool bMuffledHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
	public @property final bool bLOSHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
	public @property final bool bLOSHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
	public @property final bool bAmbientCreature() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
	public @property final bool bAmbientCreature(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
	public @property final bool bCanPickupInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
	public @property final bool bCanPickupInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
	public @property final bool bDisplayPathErrors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
	public @property final bool bDisplayPathErrors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
	public @property final bool bCanCoverSlip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool bCanCoverSlip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool bCanLeap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool bCanLeap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final bool bCanSwatTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bCanSwatTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	public @property final bool bCanClimbCeilings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000000) != 0; }
	public @property final bool bCanClimbCeilings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000000; } return val; }
	public @property final bool bCanClimbUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000000) != 0; }
	public @property final bool bCanClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000000; } return val; }
	public @property final bool bCanMantle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000000) != 0; }
	public @property final bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000000; } return val; }
	public @property final bool bForceKeepAnchor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000000) != 0; }
	public @property final bool bForceKeepAnchor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000000; } return val; }
	public @property final bool bForceFloorCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000000) != 0; }
	public @property final bool bForceFloorCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000000; } return val; }
	public @property final bool bPushesRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000000) != 0; }
	public @property final bool bPushesRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000000; } return val; }
	public @property final bool bDirectHitWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000000) != 0; }
	public @property final bool bDirectHitWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000000; } return val; }
	public @property final bool bSimGravityDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000000) != 0; }
	public @property final bool bSimGravityDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000000; } return val; }
	public @property final bool bCanBeBaseForPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800000) != 0; }
	public @property final bool bCanBeBaseForPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800000; } return val; }
	public @property final bool bCanWalkOffLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400000) != 0; }
	public @property final bool bCanWalkOffLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400000; } return val; }
	public @property final bool bIgnoreForces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200000) != 0; }
	public @property final bool bIgnoreForces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200000; } return val; }
	public @property final bool bSimulateGravity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100000) != 0; }
	public @property final bool bSimulateGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100000; } return val; }
	public @property final bool bPartiallyOverLedge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000) != 0; }
	public @property final bool bPartiallyOverLedge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000; } return val; }
	public @property final bool bAllowLedgeOverhang() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000) != 0; }
	public @property final bool bAllowLedgeOverhang(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000; } return val; }
	public @property final bool bStopAtLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000) != 0; }
	public @property final bool bStopAtLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000; } return val; }
	public @property final bool bAvoidLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000) != 0; }
	public @property final bool bAvoidLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000; } return val; }
	public @property final bool bCanStrafe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000) != 0; }
	public @property final bool bCanStrafe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000; } return val; }
	public @property final bool bCanClimbLadders() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000) != 0; }
	public @property final bool bCanClimbLadders(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000; } return val; }
	public @property final bool bCanFly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000) != 0; }
	public @property final bool bCanFly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000; } return val; }
	public @property final bool bCanSwim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000) != 0; }
	public @property final bool bCanSwim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000; } return val; }
	public @property final bool bCanWalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800) != 0; }
	public @property final bool bCanWalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800; } return val; }
	public @property final bool bCanJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400) != 0; }
	public @property final bool bCanJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400; } return val; }
	public @property final bool bJumpCapable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200) != 0; }
	public @property final bool bJumpCapable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200; } return val; }
	public @property final bool bReducedSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100) != 0; }
	public @property final bool bReducedSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100; } return val; }
	public @property final bool bCrawler() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80) != 0; }
	public @property final bool bCrawler(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80; } return val; }
	public @property final bool bCanCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40) != 0; }
	public @property final bool bCanCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40; } return val; }
	public @property final bool bTryToUncrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20) != 0; }
	public @property final bool bTryToUncrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20; } return val; }
	public @property final bool bWantsToCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8) != 0; }
	public @property final bool bWantsToCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8; } return val; }
	public @property final bool bScriptTickSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1) != 0; }
	public @property final bool bScriptTickSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1; } return val; }
	public @property final auto ref Actor LastViewer() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref PlayerController LastRealViewer() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float NetRelevancyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref Pawn NextPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref Vector PartialLedgeMoveDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float LedgeCheckThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float WalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float MaxJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	final bool IsHumanControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4254], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsLocallyControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4256], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool PlayActorFaceFXAnim(FaceFXAnimSet AnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = AnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5980], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6070], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Rotator GetBaseAimRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6080], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6256], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8006], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8056], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final bool CanThrowWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8316], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SetDesiredRotation(Rotator TargetDesiredRotation, bool InLockDesiredRotation, bool InUnlockWhenReached, float InterpolationTime, bool bResetRotationRate)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		*cast(bool*)&params[12] = InLockDesiredRotation;
		*cast(bool*)&params[16] = InUnlockWhenReached;
		*cast(float*)&params[20] = InterpolationTime;
		*cast(bool*)&params[24] = bResetRotationRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8509], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8523], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetRemoteViewPitch(int NewRemoteViewPitch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewRemoteViewPitch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8543], params.ptr, cast(void*)0);
	}
	final bool CannotJumpNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8558], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CheckWaterJump(Vector* WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *WallNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8659], params.ptr, cast(void*)0);
		*WallNormal = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final bool TouchingWaterVolume()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8662], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ReachedDestination(Actor Goal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9726], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SpecialMoveTo(NavigationPoint Start, NavigationPoint End, Actor Next)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Start;
		*cast(NavigationPoint*)&params[4] = End;
		*cast(Actor*)&params[8] = Next;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9868], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void SetScalarParameterInterp(Pawn.ScalarParameterInterpStruct* ScalarParameterInterp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn.ScalarParameterInterpStruct*)params.ptr = *ScalarParameterInterp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11399], params.ptr, cast(void*)0);
		*ScalarParameterInterp = *cast(Pawn.ScalarParameterInterpStruct*)params.ptr;
	}
	final bool CheatFly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12672], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CheatWalk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12675], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CheatGhost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12678], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPlayerPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12697], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Inventory FindInventoryType(ScriptClass DesiredClass, bool bAllowSubclass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12716], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	final Inventory CreateInventory(ScriptClass NewInvClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInvClass;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12718], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	final bool InGodMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17088], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ValidAnchor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18180], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final NavigationPoint GetBestAnchor(Actor TestActor, Vector TestLocation, bool bStartPoint, bool bOnlyCheckVisible, float* out_Dist)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		*cast(Vector*)&params[4] = TestLocation;
		*cast(bool*)&params[16] = bStartPoint;
		*cast(bool*)&params[20] = bOnlyCheckVisible;
		*cast(float*)&params[24] = *out_Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18182], params.ptr, cast(void*)0);
		*out_Dist = *cast(float*)&params[24];
		return *cast(NavigationPoint*)&params[28];
	}
	final PathGoalEvaluator CreatePathGoalEvaluator(ScriptClass GoalEvalClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18184], params.ptr, cast(void*)0);
		return *cast(PathGoalEvaluator*)&params[4];
	}
	final float GetCollisionHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18391], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final Vector GetCollisionExtent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18393], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18874], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final bool CanGrabLadder()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19149], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool LineOfSightTo(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19425], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool PickWallAdjust(Vector WallHitNormal, Actor HitActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = WallHitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19944], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void LockDesiredRotation(bool Lock, bool InUnlockWhenReached)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = Lock;
		*cast(bool*)&params[4] = InUnlockWhenReached;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19953], params.ptr, cast(void*)0);
	}
	final void ResetDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19956], cast(void*)0, cast(void*)0);
	}
	final void CheckDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19957], cast(void*)0, cast(void*)0);
	}
	final bool IsDesiredRotationInUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19958], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsDesiredRotationLocked()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19960], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19962], params.ptr, cast(void*)0);
	}
	final void CacheAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19964], cast(void*)0, cast(void*)0);
	}
	final void ClearAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19965], cast(void*)0, cast(void*)0);
	}
	final void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19966], cast(void*)0, cast(void*)0);
	}
	final void BuildScriptAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19967], cast(void*)0, cast(void*)0);
	}
	final void AddAnimSets(ScriptArray!(AnimSet)* CustomAnimSets)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(AnimSet)*)params.ptr = *CustomAnimSets;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19968], params.ptr, cast(void*)0);
		*CustomAnimSets = *cast(ScriptArray!(AnimSet)*)params.ptr;
	}
	final void AnimSetListUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19971], cast(void*)0, cast(void*)0);
	}
	final bool RestoreAnimSetsToDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19972], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19974], params.ptr, cast(void*)0);
	}
	final void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19976], params.ptr, cast(void*)0);
	}
	final void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19978], params.ptr, cast(void*)0);
	}
	final void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19980], params.ptr, cast(void*)0);
	}
	final void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19982], params.ptr, cast(void*)0);
	}
	final void MAT_SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19990], params.ptr, cast(void*)0);
	}
	final void MAT_SetAnimWeights(ScriptArray!(Actor.AnimSlotInfo) SlotInfos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Actor.AnimSlotInfo)*)params.ptr = SlotInfos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19998], params.ptr, cast(void*)0);
	}
	final void MAT_SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20001], params.ptr, cast(void*)0);
	}
	final void MAT_SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20004], params.ptr, cast(void*)0);
	}
	final void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20007], params.ptr, cast(void*)0);
	}
	final void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20010], params.ptr, cast(void*)0);
	}
	final void MAT_BeginAIGroup(Vector StartLoc, Rotator StartRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLoc;
		*cast(Rotator*)&params[12] = StartRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20012], params.ptr, cast(void*)0);
	}
	final void MAT_FinishAIGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20015], cast(void*)0, cast(void*)0);
	}
	final void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20020], cast(void*)0, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20021], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
	}
	final bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20023], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanActorPlayFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20025], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20027], params.ptr, cast(void*)0);
	}
	final void FaceFXAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20033], params.ptr, cast(void*)0);
	}
	final FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20035], params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	final void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20038], params.ptr, cast(void*)0);
	}
	final void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20041], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20044], params.ptr, cast(void*)0);
	}
	final bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20046], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector AdjustDestination(Actor GoalActor, Vector Dest)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = GoalActor;
		*cast(Vector*)&params[4] = Dest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20048], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20052], params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
	final float GetFallDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20058], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool IsValidEnemyTargetFor(PlayerReplicationInfo PRI, bool bNoPRIisEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bNoPRIisEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20060], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20064], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetAnchor(NavigationPoint NewAnchor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20067], params.ptr, cast(void*)0);
	}
	final bool ReachedPoint(Vector Point, Actor NewAnchor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Actor*)&params[12] = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ForceCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20079], cast(void*)0, cast(void*)0);
	}
	final void SetPushesRigidBodies(bool NewPush)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewPush;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20080], params.ptr, cast(void*)0);
	}
	final bool ReachedDesiredRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20082], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20084], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	final bool InitRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20087], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool TermRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20089], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SpecialMoveThruEdge(Pylon.ENavMeshEdgeType Type, int Dir, Vector MoveStart, Vector MoveDest, Actor RelActor, int RelItem)
	{
		ubyte params[41];
		params[] = 0;
		*cast(Pylon.ENavMeshEdgeType*)params.ptr = Type;
		*cast(int*)&params[4] = Dir;
		*cast(Vector*)&params[8] = MoveStart;
		*cast(Vector*)&params[20] = MoveDest;
		*cast(Actor*)&params[32] = RelActor;
		*cast(int*)&params[36] = RelItem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20094], params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	final void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20102], cast(void*)0, cast(void*)0);
	}
	final void PlayerChangedTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20103], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20104], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20106], params.ptr, cast(void*)0);
	}
	final void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20108], params.ptr, cast(void*)0);
	}
	final ubyte GetWeaponFiringMode(Weapon InWeapon)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20110], params.ptr, cast(void*)0);
		return params[4];
	}
	final void SetFiringMode(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20113], params.ptr, cast(void*)0);
	}
	final void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20116], params.ptr, cast(void*)0);
	}
	final void IncrementFlashCount(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20120], params.ptr, cast(void*)0);
	}
	final void FlashCountUpdated(Weapon InWeapon, ubyte InFlashCount, bool bViaReplication)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFlashCount;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20123], params.ptr, cast(void*)0);
	}
	final void ClearFlashCount(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20127], params.ptr, cast(void*)0);
	}
	final void SetFlashLocation(Weapon InWeapon, ubyte InFiringMode, Vector NewLoc)
	{
		ubyte params[17];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20129], params.ptr, cast(void*)0);
	}
	final void ClearFlashLocation(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20133], params.ptr, cast(void*)0);
	}
	final void FlashLocationUpdated(Weapon InWeapon, Vector InFlashLocation, bool bViaReplication)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = InFlashLocation;
		*cast(bool*)&params[16] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20135], params.ptr, cast(void*)0);
	}
	final void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20139], params.ptr, cast(void*)0);
	}
	final void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20143], params.ptr, cast(void*)0);
	}
	final bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20146], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20149], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20154], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20157], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool HasRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20161], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20163], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20167], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20172], params.ptr, cast(void*)0);
	}
	final void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20175], cast(void*)0, cast(void*)0);
	}
	final void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20176], params.ptr, cast(void*)0);
	}
	final void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20179], params.ptr, cast(void*)0);
	}
	final void UnPossessed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20181], cast(void*)0, cast(void*)0);
	}
	final void DropToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20183], cast(void*)0, cast(void*)0);
	}
	final bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20184], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20186], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20188], params.ptr, cast(void*)0);
	}
	final bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20190], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void EndClimbLadder(LadderVolume OldLadder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = OldLadder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20192], params.ptr, cast(void*)0);
	}
	final void ClimbLadder(LadderVolume L)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = L;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20194], params.ptr, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20196], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20209], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	final void GetActorEyesViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20213], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	final Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20216], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20218], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final bool InFreeCam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20225], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20228], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final void SetViewRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20232], params.ptr, cast(void*)0);
	}
	final void SetMoveTarget(Actor NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20234], params.ptr, cast(void*)0);
	}
	final void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20237], params.ptr, cast(void*)0);
	}
	final void ClientMessage(ScriptString S, ScriptName Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20239], params.ptr, cast(void*)0);
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20242], params.ptr, cast(void*)0);
	}
	final void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20244], cast(void*)0, cast(void*)0);
	}
	final void UnCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20245], cast(void*)0, cast(void*)0);
	}
	final void ShouldCrouch(bool bCrouch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCrouch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20246], params.ptr, cast(void*)0);
	}
	final void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20248], params.ptr, cast(void*)0);
	}
	final void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20250], params.ptr, cast(void*)0);
	}
	final void HandleMomentum(Vector Momentum, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = Momentum;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20252], params.ptr, cast(void*)0);
	}
	final void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20257], params.ptr, cast(void*)0);
	}
	final void KilledBy(Pawn EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20262], params.ptr, cast(void*)0);
	}
	final void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20265], cast(void*)0, cast(void*)0);
	}
	final void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20267], cast(void*)0, cast(void*)0);
	}
	final void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20268], cast(void*)0, cast(void*)0);
	}
	final void ClientSetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20269], params.ptr, cast(void*)0);
	}
	final void UpdatePawnRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20271], params.ptr, cast(void*)0);
	}
	final void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20273], params.ptr, cast(void*)0);
	}
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20276], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20279], params.ptr, cast(void*)0);
	}
	final void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20281], params.ptr, cast(void*)0);
	}
	final void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20283], cast(void*)0, cast(void*)0);
	}
	final void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20284], params.ptr, cast(void*)0);
	}
	final void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20286], cast(void*)0, cast(void*)0);
	}
	final bool CanBeBaseForPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20288], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20291], params.ptr, cast(void*)0);
	}
	final void DetachFromController(bool bDestroyController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20293], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20296], cast(void*)0, cast(void*)0);
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20297], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20298], cast(void*)0, cast(void*)0);
	}
	final void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20299], cast(void*)0, cast(void*)0);
	}
	final void ReceivedNewEvent(SequenceEvent Evt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SequenceEvent*)params.ptr = Evt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20300], params.ptr, cast(void*)0);
	}
	final void OnAssignController(SeqAct_AssignController inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AssignController*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20302], params.ptr, cast(void*)0);
	}
	final void OnGiveInventory(SeqAct_GiveInventory inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_GiveInventory*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20306], params.ptr, cast(void*)0);
	}
	final void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20313], cast(void*)0, cast(void*)0);
	}
	final void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20314], cast(void*)0, cast(void*)0);
	}
	final void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20315], params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	final bool HealDamage(int Amount, Controller Healer, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void PruneDamagedBoneList(ScriptArray!(ScriptName)* Bones)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20328], params.ptr, cast(void*)0);
		*Bones = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	final bool TakeRadiusDamageOnBones(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, ScriptArray!(ScriptName) Bones)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(ScriptArray!(ScriptName)*)&params[40] = Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20331], params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
	}
	final void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass DamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20350], params.ptr, cast(void*)0);
	}
	final Controller SetKillInstigator(Controller InstigatedBy, ScriptClass DamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(ScriptClass*)&params[4] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20356], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
	}
	final void TakeDamage(int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20360], params.ptr, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20371], params.ptr, cast(void*)0);
		return params[0];
	}
	final TeamInfo GetTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20373], params.ptr, cast(void*)0);
		return *cast(TeamInfo*)params.ptr;
	}
	final bool IsSameTeam(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20375], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ThrowWeaponOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20378], cast(void*)0, cast(void*)0);
	}
	final void DelayTriggerDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20383], cast(void*)0, cast(void*)0);
	}
	final void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20384], cast(void*)0, cast(void*)0);
	}
	final void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20385], params.ptr, cast(void*)0);
	}
	final void TickSpecial(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20388], params.ptr, cast(void*)0);
	}
	final void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20390], params.ptr, cast(void*)0);
	}
	final void BreathTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20393], cast(void*)0, cast(void*)0);
	}
	final void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20394], cast(void*)0, cast(void*)0);
	}
	final void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20404], cast(void*)0, cast(void*)0);
	}
	final void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass DamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20405], params.ptr, cast(void*)0);
	}
	final void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20412], cast(void*)0, cast(void*)0);
	}
	final void SetDyingPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20413], cast(void*)0, cast(void*)0);
	}
	final void PlayDying(ScriptClass DamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20460], params.ptr, cast(void*)0);
	}
	final void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20463], cast(void*)0, cast(void*)0);
	}
	final void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20464], params.ptr, cast(void*)0);
	}
	final void PlayLanded(float ImpactVel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ImpactVel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20466], params.ptr, cast(void*)0);
	}
	final Vehicle GetVehicleBase()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20468], params.ptr, cast(void*)0);
		return *cast(Vehicle*)params.ptr;
	}
	final void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20470], cast(void*)0, cast(void*)0);
	}
	final void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20473], params.ptr, cast(void*)0);
	}
	final void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20475], params.ptr, cast(void*)0);
	}
	final void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20477], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20482], params.ptr, cast(void*)0);
	}
	final void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20484], params.ptr, cast(void*)0);
	}
	final void TossInventory(Inventory Inv, Vector ForceVelocity)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		*cast(Vector*)&params[4] = ForceVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20486], params.ptr, cast(void*)0);
	}
	final void SetActiveWeapon(Weapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20495], params.ptr, cast(void*)0);
	}
	final void PlayWeaponSwitch(Weapon OldWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = OldWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20497], params.ptr, cast(void*)0);
	}
	final float GetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20500], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20503], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20505], cast(void*)0, cast(void*)0);
	}
	final void DoKismetAttachment(Actor Attachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Attachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20506], params.ptr, cast(void*)0);
	}
	final float GetDamageScaling()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20513], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20515], params.ptr, cast(void*)0);
	}
	final void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20517], params.ptr, cast(void*)0);
	}
	final void MessagePlayer(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20529], params.ptr, cast(void*)0);
	}
	final void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20531], params.ptr, cast(void*)0);
	}
	final void SoakPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20533], cast(void*)0, cast(void*)0);
	}
	final void ClearConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20535], cast(void*)0, cast(void*)0);
	}
	final void AddPathConstraint(PathConstraint Constraint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathConstraint*)params.ptr = Constraint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20536], params.ptr, cast(void*)0);
	}
	final void AddGoalEvaluator(PathGoalEvaluator Evaluator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathGoalEvaluator*)params.ptr = Evaluator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20538], params.ptr, cast(void*)0);
	}
	final PathConstraint CreatePathConstraint(ScriptClass ConstraintClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20540], params.ptr, cast(void*)0);
		return *cast(PathConstraint*)&params[4];
	}
	final void IncrementPathStep(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20544], params.ptr, cast(void*)0);
	}
	final void IncrementPathChild(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20547], params.ptr, cast(void*)0);
	}
	final void DrawPathStep(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20550], params.ptr, cast(void*)0);
	}
	final void ClearPathStep()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20552], cast(void*)0, cast(void*)0);
	}
	final void ZeroMovementVariables()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20553], cast(void*)0, cast(void*)0);
	}
	final void SetCinematicMode(bool bInCinematicMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20554], params.ptr, cast(void*)0);
	}
	final void SetRootMotionInterpCurrentTime(float inTime, float DeltaTime, bool bUpdateSkelPose)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inTime;
		*cast(float*)&params[4] = DeltaTime;
		*cast(bool*)&params[8] = bUpdateSkelPose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20556], params.ptr, cast(void*)0);
	}
	final void Speak(SoundCue Cue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Cue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20561], params.ptr, cast(void*)0);
	}
	final void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20563], params.ptr, cast(void*)0);
	}
	final bool CheckClotheslineDamage(Pawn PawnHittingMe)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = PawnHittingMe;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20565], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
