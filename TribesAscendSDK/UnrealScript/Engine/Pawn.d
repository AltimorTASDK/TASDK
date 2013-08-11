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
public extern(D):
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
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			float WarmupTime() { return *cast(float*)(cast(size_t)&this + 16); }
			float InterpTime() { return *cast(float*)(cast(size_t)&this + 12); }
			float ParameterValue() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct LastHitInfoStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptClass Type() { return *cast(ScriptClass*)(cast(size_t)&this + 16); }
				Actor Causer() { return *cast(Actor*)(cast(size_t)&this + 12); }
				float Distance() { return *cast(float*)(cast(size_t)&this + 8); }
				float Amount() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bDirectHit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDirectHit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Controller' has the same name as a defined type!
			int MaxPitchLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
			// WARNING: Property 'Weapon' has the same name as a defined type!
			InventoryManager InvManager() { return *cast(InventoryManager*)(cast(size_t)cast(void*)this + 980); }
			float EyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			float BaseEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 752); }
			Vector Floor() { return *cast(Vector*)(cast(size_t)cast(void*)this + 732); }
			float CrouchHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float MaxStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float VehicleCheckRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
			float LastStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
			PhysicsVolume HeadVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 748); }
			float BreathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			float UnderWaterTime() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
			ScriptName WaterMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 876); }
			ScriptName LandMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 868); }
			float AccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			Actor.EPhysics WalkingPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 536); }
			LadderVolume OnLadder() { return *cast(LadderVolume*)(cast(size_t)cast(void*)this + 864); }
			float OutofWaterZ() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			NavigationPoint Anchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 612); }
			ScriptArray!(AnimNodeSlot) SlotNodes() { return *cast(ScriptArray!(AnimNodeSlot)*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(InterpGroup) InterpGroupList() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 1040); }
			ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { return *cast(ScriptArray!(Pawn.ScalarParameterInterpStruct)*)(cast(size_t)cast(void*)this + 1064); }
			Pawn.LastHitInfoStruct LastHitInfo() { return *cast(Pawn.LastHitInfoStruct*)(cast(size_t)cast(void*)this + 1124); }
			Vector RootMotionInterpCurveLastValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1112); }
			float RootMotionInterpCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
			float RootMotionInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			EngineTypes.RootMotionCurve RootMotionInterpCurve() { return *cast(EngineTypes.RootMotionCurve*)(cast(size_t)cast(void*)this + 1076); }
			MaterialInstanceConstant MIC_PawnHair() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
			MaterialInstanceConstant MIC_PawnMat() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1056); }
			int FailedLandingCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1024); }
			RB_BodyInstance PhysicsPushBody() { return *cast(RB_BodyInstance*)(cast(size_t)cast(void*)this + 1020); }
			int ShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1012); }
			Vector LastFiringFlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1000); }
			Vector FlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 988); }
			ScriptClass InventoryManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 976); }
			Rotator DesiredRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 964); }
			int AllowedYawError() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
			float ViewPitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			float ViewPitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			Controller LastHitBy() { return *cast(Controller*)(cast(size_t)cast(void*)this + 948); }
			float AlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 940); }
			Vehicle DrivenVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 936); }
			float RBPushStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			float RBPushRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			Vector TearOffMomentum() { return *cast(Vector*)(cast(size_t)cast(void*)this + 908); }
			ScriptClass HitDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 904); }
			Vector TakeHitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 892); }
			PlayerStart LastStartSpot() { return *cast(PlayerStart*)(cast(size_t)cast(void*)this + 884); }
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 856); }
			ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 844); }
			float DamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			float SoundDampening() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			float noise2loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			Pawn noise2other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 828); }
			float noise2time() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			Vector noise2spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 812); }
			float noise1loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			Pawn noise1other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 804); }
			float noise1time() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			Vector noise1spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			Vector RMVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
			float KismetDeathDelayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			float LastPainTime() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
			int HealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
			float SplashTime() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float AIMaxFallSpeedFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
			float MaxFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			float CrouchedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			float MovementSpeedModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
			float WalkingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float AirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float MaxOutOfWaterStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float JumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float LadderSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
			float AirSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			float WaterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			float GroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			float SpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 660); }
			float SerpentineTime() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float SerpentineDist() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			Vector SerpentineDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
			float NextPathRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float DestinationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float LastValidAnchorTime() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			float FindAnchorFailedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			NavigationPoint LastAnchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 620); }
			int AnchorItem() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
			float MeleeRange() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float Buoyancy() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float Mass() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			float AvgPhysicsTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float PeripheralVision() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float SightRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float Alertness() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float HearingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float MaxDesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float DesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			PathGoalEvaluator PathGoalList() { return *cast(PathGoalEvaluator*)(cast(size_t)cast(void*)this + 568); }
			PathConstraint PathConstraintList() { return *cast(PathConstraint*)(cast(size_t)cast(void*)this + 564); }
			float NonPreferredVehiclePathMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			int FullHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
			float CrouchRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float UncrouchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			ubyte FiringMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 540); }
			ubyte FlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 539); }
			ubyte RemoteViewPitch() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 538); }
			Pawn.EPathSearchType PathSearchType() { return *cast(Pawn.EPathSearchType*)(cast(size_t)cast(void*)this + 537); }
			UObject.Pointer VfTable_IInterface_Speaker() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
			Actor LastViewer() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
			PlayerController LastRealViewer() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 520); }
			float NetRelevancyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			Pawn NextPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 512); }
			Vector PartialLedgeMoveDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
			float LedgeCheckThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float WalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float MaxJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bIsWalking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4) != 0; }
		bool bIsWalking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4; } return val; }
		bool bForceRMVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100000) != 0; }
		bool bForceRMVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100000; } return val; }
		bool bRootMotionFromInterpCurve() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000000) != 0; }
		bool bRootMotionFromInterpCurve(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000000; } return val; }
		bool bIsCrouched() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10) != 0; }
		bool bIsCrouched(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10; } return val; }
		bool bForceMaxAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20000) != 0; }
		bool bForceMaxAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20000; } return val; }
		bool bUpAndOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2) != 0; }
		bool bUpAndOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2; } return val; }
		bool bDebugShowCameraLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000000) != 0; }
		bool bDebugShowCameraLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000000; } return val; }
		bool bNeedsBaseTickedFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000000) != 0; }
		bool bNeedsBaseTickedFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000000; } return val; }
		bool bUnlockWhenReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000000) != 0; }
		bool bUnlockWhenReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000000; } return val; }
		bool bLockDesiredRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000000) != 0; }
		bool bLockDesiredRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000000; } return val; }
		bool bDesiredRotationSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800000) != 0; }
		bool bDesiredRotationSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800000; } return val; }
		bool bPlayedDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400000) != 0; }
		bool bPlayedDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400000; } return val; }
		bool bForceRegularVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200000) != 0; }
		bool bForceRegularVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200000; } return val; }
		bool bReplicateHealthToAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80000) != 0; }
		bool bReplicateHealthToAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80000; } return val; }
		bool bLimitFallAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40000) != 0; }
		bool bLimitFallAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40000; } return val; }
		bool bRunPhysicsWithNoController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000) != 0; }
		bool bRunPhysicsWithNoController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000; } return val; }
		bool bPathfindsAsVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000) != 0; }
		bool bPathfindsAsVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000; } return val; }
		bool bModifyNavPointDest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000) != 0; }
		bool bModifyNavPointDest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000; } return val; }
		bool bModifyReachSpecCost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000) != 0; }
		bool bModifyReachSpecCost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000; } return val; }
		bool bNoWeaponFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000) != 0; }
		bool bNoWeaponFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000; } return val; }
		bool bCachedRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800) != 0; }
		bool bCachedRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800; } return val; }
		bool bStationary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400) != 0; }
		bool bStationary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400; } return val; }
		bool bRollToDesired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200) != 0; }
		bool bRollToDesired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200; } return val; }
		bool bDontPossess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100) != 0; }
		bool bDontPossess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100; } return val; }
		bool bMuffledHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
		bool bMuffledHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
		bool bLOSHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
		bool bLOSHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
		bool bAmbientCreature() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
		bool bAmbientCreature(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
		bool bCanPickupInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
		bool bCanPickupInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
		bool bDisplayPathErrors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bDisplayPathErrors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bCanCoverSlip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bCanCoverSlip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bCanLeap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bCanLeap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bCanSwatTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bCanSwatTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
		bool bCanClimbCeilings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000000) != 0; }
		bool bCanClimbCeilings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000000; } return val; }
		bool bCanClimbUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000000) != 0; }
		bool bCanClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000000; } return val; }
		bool bCanMantle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000000) != 0; }
		bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000000; } return val; }
		bool bForceKeepAnchor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000000) != 0; }
		bool bForceKeepAnchor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000000; } return val; }
		bool bForceFloorCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000000) != 0; }
		bool bForceFloorCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000000; } return val; }
		bool bPushesRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000000) != 0; }
		bool bPushesRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000000; } return val; }
		bool bDirectHitWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000000) != 0; }
		bool bDirectHitWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000000; } return val; }
		bool bSimGravityDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000000) != 0; }
		bool bSimGravityDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000000; } return val; }
		bool bCanBeBaseForPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800000) != 0; }
		bool bCanBeBaseForPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800000; } return val; }
		bool bCanWalkOffLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400000) != 0; }
		bool bCanWalkOffLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400000; } return val; }
		bool bIgnoreForces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200000) != 0; }
		bool bIgnoreForces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200000; } return val; }
		bool bSimulateGravity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100000) != 0; }
		bool bSimulateGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100000; } return val; }
		bool bPartiallyOverLedge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000) != 0; }
		bool bPartiallyOverLedge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000; } return val; }
		bool bAllowLedgeOverhang() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000) != 0; }
		bool bAllowLedgeOverhang(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000; } return val; }
		bool bStopAtLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000) != 0; }
		bool bStopAtLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000; } return val; }
		bool bAvoidLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000) != 0; }
		bool bAvoidLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000; } return val; }
		bool bCanStrafe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000) != 0; }
		bool bCanStrafe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000; } return val; }
		bool bCanClimbLadders() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000) != 0; }
		bool bCanClimbLadders(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000; } return val; }
		bool bCanFly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000) != 0; }
		bool bCanFly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000; } return val; }
		bool bCanSwim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000) != 0; }
		bool bCanSwim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000; } return val; }
		bool bCanWalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800) != 0; }
		bool bCanWalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800; } return val; }
		bool bCanJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400) != 0; }
		bool bCanJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400; } return val; }
		bool bJumpCapable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200) != 0; }
		bool bJumpCapable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200; } return val; }
		bool bReducedSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100) != 0; }
		bool bReducedSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100; } return val; }
		bool bCrawler() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80) != 0; }
		bool bCrawler(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80; } return val; }
		bool bCanCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40) != 0; }
		bool bCanCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40; } return val; }
		bool bTryToUncrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20) != 0; }
		bool bTryToUncrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20; } return val; }
		bool bWantsToCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8) != 0; }
		bool bWantsToCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8; } return val; }
		bool bScriptTickSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1) != 0; }
		bool bScriptTickSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1; } return val; }
	}
final:
	bool IsHumanControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4254], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLocallyControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4256], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlayActorFaceFXAnim(FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5980], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6070], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetBaseAimRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6080], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6256], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8006], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8056], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool CanThrowWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8316], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetDesiredRotation(Rotator TargetDesiredRotation, bool InLockDesiredRotation, bool InUnlockWhenReached, float InterpolationTime, bool bResetRotationRate)
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
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8523], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetRemoteViewPitch(int NewRemoteViewPitch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewRemoteViewPitch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8543], params.ptr, cast(void*)0);
	}
	bool CannotJumpNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8558], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheckWaterJump(Vector* WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *WallNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8659], params.ptr, cast(void*)0);
		*WallNormal = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool TouchingWaterVolume()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8662], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ReachedDestination(Actor Goal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9726], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SpecialMoveTo(NavigationPoint Start, NavigationPoint End, Actor Next)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Start;
		*cast(NavigationPoint*)&params[4] = End;
		*cast(Actor*)&params[8] = Next;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9868], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetScalarParameterInterp(Pawn.ScalarParameterInterpStruct* ScalarParameterInterp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn.ScalarParameterInterpStruct*)params.ptr = *ScalarParameterInterp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11399], params.ptr, cast(void*)0);
		*ScalarParameterInterp = *cast(Pawn.ScalarParameterInterpStruct*)params.ptr;
	}
	bool CheatFly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12672], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatWalk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12675], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatGhost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12678], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayerPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12697], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Inventory FindInventoryType(ScriptClass DesiredClass, bool bAllowSubclass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12716], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	Inventory CreateInventory(ScriptClass NewInvClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInvClass;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12718], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	bool InGodMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17088], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ValidAnchor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18180], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	NavigationPoint GetBestAnchor(Actor TestActor, Vector TestLocation, bool bStartPoint, bool bOnlyCheckVisible, float* out_Dist)
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
	PathGoalEvaluator CreatePathGoalEvaluator(ScriptClass GoalEvalClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18184], params.ptr, cast(void*)0);
		return *cast(PathGoalEvaluator*)&params[4];
	}
	float GetCollisionHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18391], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetCollisionExtent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18393], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18874], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool CanGrabLadder()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19149], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool LineOfSightTo(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19425], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PickWallAdjust(Vector WallHitNormal, Actor HitActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = WallHitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19944], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void LockDesiredRotation(bool Lock, bool InUnlockWhenReached)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = Lock;
		*cast(bool*)&params[4] = InUnlockWhenReached;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19953], params.ptr, cast(void*)0);
	}
	void ResetDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19956], cast(void*)0, cast(void*)0);
	}
	void CheckDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19957], cast(void*)0, cast(void*)0);
	}
	bool IsDesiredRotationInUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19958], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDesiredRotationLocked()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19960], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19962], params.ptr, cast(void*)0);
	}
	void CacheAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19964], cast(void*)0, cast(void*)0);
	}
	void ClearAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19965], cast(void*)0, cast(void*)0);
	}
	void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19966], cast(void*)0, cast(void*)0);
	}
	void BuildScriptAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19967], cast(void*)0, cast(void*)0);
	}
	void AddAnimSets(ScriptArray!(AnimSet)* CustomAnimSets)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(AnimSet)*)params.ptr = *CustomAnimSets;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19968], params.ptr, cast(void*)0);
		*CustomAnimSets = *cast(ScriptArray!(AnimSet)*)params.ptr;
	}
	void AnimSetListUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19971], cast(void*)0, cast(void*)0);
	}
	bool RestoreAnimSetsToDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19972], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19974], params.ptr, cast(void*)0);
	}
	void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19976], params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19978], params.ptr, cast(void*)0);
	}
	void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19980], params.ptr, cast(void*)0);
	}
	void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
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
	void MAT_SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
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
	void MAT_SetAnimWeights(ScriptArray!(Actor.AnimSlotInfo) SlotInfos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Actor.AnimSlotInfo)*)params.ptr = SlotInfos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19998], params.ptr, cast(void*)0);
	}
	void MAT_SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20001], params.ptr, cast(void*)0);
	}
	void MAT_SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20004], params.ptr, cast(void*)0);
	}
	void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20007], params.ptr, cast(void*)0);
	}
	void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20010], params.ptr, cast(void*)0);
	}
	void MAT_BeginAIGroup(Vector StartLoc, Rotator StartRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLoc;
		*cast(Rotator*)&params[12] = StartRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20012], params.ptr, cast(void*)0);
	}
	void MAT_FinishAIGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20015], cast(void*)0, cast(void*)0);
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20020], cast(void*)0, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20021], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
	bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20023], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanActorPlayFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20025], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20027], params.ptr, cast(void*)0);
	}
	void FaceFXAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20033], params.ptr, cast(void*)0);
	}
	FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20035], params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20038], params.ptr, cast(void*)0);
	}
	void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20041], params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20044], params.ptr, cast(void*)0);
	}
	bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20046], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector AdjustDestination(Actor GoalActor, Vector Dest)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = GoalActor;
		*cast(Vector*)&params[4] = Dest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20048], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
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
	float GetFallDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20058], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsValidEnemyTargetFor(PlayerReplicationInfo PRI, bool bNoPRIisEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bNoPRIisEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20060], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20064], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetAnchor(NavigationPoint NewAnchor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20067], params.ptr, cast(void*)0);
	}
	bool ReachedPoint(Vector Point, Actor NewAnchor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Actor*)&params[12] = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ForceCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20079], cast(void*)0, cast(void*)0);
	}
	void SetPushesRigidBodies(bool NewPush)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewPush;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20080], params.ptr, cast(void*)0);
	}
	bool ReachedDesiredRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20082], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20084], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	bool InitRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20087], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TermRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20089], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SpecialMoveThruEdge(Pylon.ENavMeshEdgeType Type, int Dir, Vector MoveStart, Vector MoveDest, Actor RelActor, int RelItem)
	{
		ubyte params[44];
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
	void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20102], cast(void*)0, cast(void*)0);
	}
	void PlayerChangedTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20103], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20104], cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20106], params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20108], params.ptr, cast(void*)0);
	}
	ubyte GetWeaponFiringMode(Weapon InWeapon)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20110], params.ptr, cast(void*)0);
		return params[4];
	}
	void SetFiringMode(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20113], params.ptr, cast(void*)0);
	}
	void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20116], params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20120], params.ptr, cast(void*)0);
	}
	void FlashCountUpdated(Weapon InWeapon, ubyte InFlashCount, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFlashCount;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20123], params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20127], params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon InWeapon, ubyte InFiringMode, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20129], params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20133], params.ptr, cast(void*)0);
	}
	void FlashLocationUpdated(Weapon InWeapon, Vector InFlashLocation, bool bViaReplication)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = InFlashLocation;
		*cast(bool*)&params[16] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20135], params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20139], params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20143], params.ptr, cast(void*)0);
	}
	bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20146], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20149], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20154], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20157], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20161], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20163], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20167], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20172], params.ptr, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20175], cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20176], params.ptr, cast(void*)0);
	}
	void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20179], params.ptr, cast(void*)0);
	}
	void UnPossessed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20181], cast(void*)0, cast(void*)0);
	}
	void DropToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20183], cast(void*)0, cast(void*)0);
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20184], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20186], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20188], params.ptr, cast(void*)0);
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20190], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EndClimbLadder(LadderVolume OldLadder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = OldLadder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20192], params.ptr, cast(void*)0);
	}
	void ClimbLadder(LadderVolume L)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = L;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20194], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
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
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
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
	void GetActorEyesViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20213], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20216], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20218], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool InFreeCam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20225], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20228], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	void SetViewRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20232], params.ptr, cast(void*)0);
	}
	void SetMoveTarget(Actor NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20234], params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20237], params.ptr, cast(void*)0);
	}
	void ClientMessage(ScriptString S, ScriptName Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20239], params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20242], params.ptr, cast(void*)0);
	}
	void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20244], cast(void*)0, cast(void*)0);
	}
	void UnCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20245], cast(void*)0, cast(void*)0);
	}
	void ShouldCrouch(bool bCrouch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCrouch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20246], params.ptr, cast(void*)0);
	}
	void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20248], params.ptr, cast(void*)0);
	}
	void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20250], params.ptr, cast(void*)0);
	}
	void HandleMomentum(Vector Momentum, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = Momentum;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20252], params.ptr, cast(void*)0);
	}
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20257], params.ptr, cast(void*)0);
	}
	void KilledBy(Pawn EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20262], params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20265], cast(void*)0, cast(void*)0);
	}
	void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20267], cast(void*)0, cast(void*)0);
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20268], cast(void*)0, cast(void*)0);
	}
	void ClientSetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20269], params.ptr, cast(void*)0);
	}
	void UpdatePawnRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20271], params.ptr, cast(void*)0);
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20273], params.ptr, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20276], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20279], params.ptr, cast(void*)0);
	}
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20281], params.ptr, cast(void*)0);
	}
	void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20283], cast(void*)0, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20284], params.ptr, cast(void*)0);
	}
	void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20286], cast(void*)0, cast(void*)0);
	}
	bool CanBeBaseForPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20288], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20291], params.ptr, cast(void*)0);
	}
	void DetachFromController(bool bDestroyController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20293], params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20296], cast(void*)0, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20297], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20298], cast(void*)0, cast(void*)0);
	}
	void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20299], cast(void*)0, cast(void*)0);
	}
	void ReceivedNewEvent(SequenceEvent Evt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SequenceEvent*)params.ptr = Evt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20300], params.ptr, cast(void*)0);
	}
	void OnAssignController(SeqAct_AssignController inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AssignController*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20302], params.ptr, cast(void*)0);
	}
	void OnGiveInventory(SeqAct_GiveInventory inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_GiveInventory*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20306], params.ptr, cast(void*)0);
	}
	void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20313], cast(void*)0, cast(void*)0);
	}
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20314], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20315], params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	bool HealDamage(int Amount, Controller Healer, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void PruneDamagedBoneList(ScriptArray!(ScriptName)* Bones)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20328], params.ptr, cast(void*)0);
		*Bones = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	bool TakeRadiusDamageOnBones(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, ScriptArray!(ScriptName) Bones)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(ScriptArray!(ScriptName)*)&params[40] = Bones;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20331], params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20350], params.ptr, cast(void*)0);
	}
	Controller SetKillInstigator(Controller InstigatedBy, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20356], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
	}
	void TakeDamage(int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20360], params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20371], params.ptr, cast(void*)0);
		return params[0];
	}
	TeamInfo GetTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20373], params.ptr, cast(void*)0);
		return *cast(TeamInfo*)params.ptr;
	}
	bool IsSameTeam(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20375], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ThrowWeaponOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20378], cast(void*)0, cast(void*)0);
	}
	void DelayTriggerDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20383], cast(void*)0, cast(void*)0);
	}
	void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20384], cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20385], params.ptr, cast(void*)0);
	}
	void TickSpecial(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20388], params.ptr, cast(void*)0);
	}
	void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20390], params.ptr, cast(void*)0);
	}
	void BreathTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20393], cast(void*)0, cast(void*)0);
	}
	void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20394], cast(void*)0, cast(void*)0);
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20404], cast(void*)0, cast(void*)0);
	}
	void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20405], params.ptr, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20412], cast(void*)0, cast(void*)0);
	}
	void SetDyingPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20413], cast(void*)0, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20460], params.ptr, cast(void*)0);
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20463], cast(void*)0, cast(void*)0);
	}
	void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20464], params.ptr, cast(void*)0);
	}
	void PlayLanded(float ImpactVel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ImpactVel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20466], params.ptr, cast(void*)0);
	}
	Vehicle GetVehicleBase()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20468], params.ptr, cast(void*)0);
		return *cast(Vehicle*)params.ptr;
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20470], cast(void*)0, cast(void*)0);
	}
	void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20473], params.ptr, cast(void*)0);
	}
	void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20475], params.ptr, cast(void*)0);
	}
	void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20477], cast(void*)0, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20482], params.ptr, cast(void*)0);
	}
	void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20484], params.ptr, cast(void*)0);
	}
	void TossInventory(Inventory Inv, Vector ForceVelocity)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		*cast(Vector*)&params[4] = ForceVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20486], params.ptr, cast(void*)0);
	}
	void SetActiveWeapon(Weapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20495], params.ptr, cast(void*)0);
	}
	void PlayWeaponSwitch(Weapon OldWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = OldWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20497], params.ptr, cast(void*)0);
	}
	float GetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20500], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20503], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20505], cast(void*)0, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20506], params.ptr, cast(void*)0);
	}
	float GetDamageScaling()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20513], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20515], params.ptr, cast(void*)0);
	}
	void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20517], params.ptr, cast(void*)0);
	}
	void MessagePlayer(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20529], params.ptr, cast(void*)0);
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20531], params.ptr, cast(void*)0);
	}
	void SoakPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20533], cast(void*)0, cast(void*)0);
	}
	void ClearConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20535], cast(void*)0, cast(void*)0);
	}
	void AddPathConstraint(PathConstraint Constraint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathConstraint*)params.ptr = Constraint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20536], params.ptr, cast(void*)0);
	}
	void AddGoalEvaluator(PathGoalEvaluator Evaluator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathGoalEvaluator*)params.ptr = Evaluator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20538], params.ptr, cast(void*)0);
	}
	PathConstraint CreatePathConstraint(ScriptClass ConstraintClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20540], params.ptr, cast(void*)0);
		return *cast(PathConstraint*)&params[4];
	}
	void IncrementPathStep(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20544], params.ptr, cast(void*)0);
	}
	void IncrementPathChild(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20547], params.ptr, cast(void*)0);
	}
	void DrawPathStep(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20550], params.ptr, cast(void*)0);
	}
	void ClearPathStep()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20552], cast(void*)0, cast(void*)0);
	}
	void ZeroMovementVariables()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20553], cast(void*)0, cast(void*)0);
	}
	void SetCinematicMode(bool bInCinematicMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20554], params.ptr, cast(void*)0);
	}
	void SetRootMotionInterpCurrentTime(float inTime, float DeltaTime, bool bUpdateSkelPose)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inTime;
		*cast(float*)&params[4] = DeltaTime;
		*cast(bool*)&params[8] = bUpdateSkelPose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20556], params.ptr, cast(void*)0);
	}
	void Speak(SoundCue Cue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Cue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20561], params.ptr, cast(void*)0);
	}
	void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20563], params.ptr, cast(void*)0);
	}
	bool CheckClotheslineDamage(Pawn PawnHittingMe)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = PawnHittingMe;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20565], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
