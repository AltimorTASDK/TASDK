module UnrealScript.Engine.PhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.VolumeTimer;
import UnrealScript.Engine.SeqAct_SetDamageInstigator;

extern(C++) interface PhysicsVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PhysicsVolume")()); }
	private static __gshared PhysicsVolume mDefaultProperties;
	@property final static PhysicsVolume DefaultProperties() { mixin(MGDPC!(PhysicsVolume, "PhysicsVolume Engine.Default__PhysicsVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetGravityZ;
			ScriptFunction mGetZoneVelocityForActor;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReset;
			ScriptFunction mPhysicsChangedFor;
			ScriptFunction mActorEnteredVolume;
			ScriptFunction mActorLeavingVolume;
			ScriptFunction mPawnEnteredVolume;
			ScriptFunction mPawnLeavingVolume;
			ScriptFunction mOnToggle;
			ScriptFunction mCollisionChanged;
			ScriptFunction mTimerPop;
			ScriptFunction mTouch;
			ScriptFunction mCausePainTo;
			ScriptFunction mModifyPlayer;
			ScriptFunction mNotifyPawnBecameViewTarget;
			ScriptFunction mOnSetDamageInstigator;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction GetGravityZ() { mixin(MGF!("mGetGravityZ", "Function Engine.PhysicsVolume.GetGravityZ")()); }
			ScriptFunction GetZoneVelocityForActor() { mixin(MGF!("mGetZoneVelocityForActor", "Function Engine.PhysicsVolume.GetZoneVelocityForActor")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.PhysicsVolume.PostBeginPlay")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.PhysicsVolume.Reset")()); }
			ScriptFunction PhysicsChangedFor() { mixin(MGF!("mPhysicsChangedFor", "Function Engine.PhysicsVolume.PhysicsChangedFor")()); }
			ScriptFunction ActorEnteredVolume() { mixin(MGF!("mActorEnteredVolume", "Function Engine.PhysicsVolume.ActorEnteredVolume")()); }
			ScriptFunction ActorLeavingVolume() { mixin(MGF!("mActorLeavingVolume", "Function Engine.PhysicsVolume.ActorLeavingVolume")()); }
			ScriptFunction PawnEnteredVolume() { mixin(MGF!("mPawnEnteredVolume", "Function Engine.PhysicsVolume.PawnEnteredVolume")()); }
			ScriptFunction PawnLeavingVolume() { mixin(MGF!("mPawnLeavingVolume", "Function Engine.PhysicsVolume.PawnLeavingVolume")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.PhysicsVolume.OnToggle")()); }
			ScriptFunction CollisionChanged() { mixin(MGF!("mCollisionChanged", "Function Engine.PhysicsVolume.CollisionChanged")()); }
			ScriptFunction TimerPop() { mixin(MGF!("mTimerPop", "Function Engine.PhysicsVolume.TimerPop")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.PhysicsVolume.Touch")()); }
			ScriptFunction CausePainTo() { mixin(MGF!("mCausePainTo", "Function Engine.PhysicsVolume.CausePainTo")()); }
			ScriptFunction ModifyPlayer() { mixin(MGF!("mModifyPlayer", "Function Engine.PhysicsVolume.ModifyPlayer")()); }
			ScriptFunction NotifyPawnBecameViewTarget() { mixin(MGF!("mNotifyPawnBecameViewTarget", "Function Engine.PhysicsVolume.NotifyPawnBecameViewTarget")()); }
			ScriptFunction OnSetDamageInstigator() { mixin(MGF!("mOnSetDamageInstigator", "Function Engine.PhysicsVolume.OnSetDamageInstigator")()); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF!("mShouldSaveForCheckpoint", "Function Engine.PhysicsVolume.ShouldSaveForCheckpoint")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.PhysicsVolume.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.PhysicsVolume.ApplyCheckpointRecord")()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PhysicsVolume.CheckpointRecord")()); }
		@property final
		{
			bool bActive() { mixin(MGBPS!(0, 0x2)()); }
			bool bActive(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bPainCausing() { mixin(MGBPS!(0, 0x1)()); }
			bool bPainCausing(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			float DamagePerSec() { mixin(MGPC!("float", 544)()); }
			PhysicsVolume NextPhysicsVolume() { mixin(MGPC!("PhysicsVolume", 580)()); }
			Controller DamageInstigator() { mixin(MGPC!("Controller", 576)()); }
			Info PainTimer() { mixin(MGPC!("Info", 572)()); }
			float MaxDampingForce() { mixin(MGPC!("float", 568)()); }
			float RigidBodyDamping() { mixin(MGPC!("float", 564)()); }
			float PainInterval() { mixin(MGPC!("float", 560)()); }
			float FluidFriction() { mixin(MGPC!("float", 556)()); }
			int Priority() { mixin(MGPC!("int", 552)()); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			float TerminalVelocity() { mixin(MGPC!("float", 540)()); }
			float GroundFriction() { mixin(MGPC!("float", 536)()); }
			Vector ZoneVelocity() { mixin(MGPC!("Vector", 520)()); }
		}
		bool bPainCausing() { mixin(MGBPC!(532, 0x2)()); }
		bool bPainCausing(bool val) { mixin(MSBPC!(532, 0x2)()); }
		bool bWaterVolume() { mixin(MGBPC!(532, 0x1000)()); }
		bool bWaterVolume(bool val) { mixin(MSBPC!(532, 0x1000)()); }
		bool bPhysicsOnContact() { mixin(MGBPC!(532, 0x800)()); }
		bool bPhysicsOnContact(bool val) { mixin(MSBPC!(532, 0x800)()); }
		bool bCrowdAgentsPlayDeathAnim() { mixin(MGBPC!(532, 0x400)()); }
		bool bCrowdAgentsPlayDeathAnim(bool val) { mixin(MSBPC!(532, 0x400)()); }
		bool bNeutralZone() { mixin(MGBPC!(532, 0x200)()); }
		bool bNeutralZone(bool val) { mixin(MSBPC!(532, 0x200)()); }
		bool bBounceVelocity() { mixin(MGBPC!(532, 0x100)()); }
		bool bBounceVelocity(bool val) { mixin(MSBPC!(532, 0x100)()); }
		bool bMoveProjectiles() { mixin(MGBPC!(532, 0x80)()); }
		bool bMoveProjectiles(bool val) { mixin(MSBPC!(532, 0x80)()); }
		bool bNoInventory() { mixin(MGBPC!(532, 0x40)()); }
		bool bNoInventory(bool val) { mixin(MSBPC!(532, 0x40)()); }
		bool bDestructive() { mixin(MGBPC!(532, 0x20)()); }
		bool bDestructive(bool val) { mixin(MSBPC!(532, 0x20)()); }
		bool BACKUP_bPainCausing() { mixin(MGBPC!(532, 0x10)()); }
		bool BACKUP_bPainCausing(bool val) { mixin(MSBPC!(532, 0x10)()); }
		bool bEntryPain() { mixin(MGBPC!(532, 0x8)()); }
		bool bEntryPain(bool val) { mixin(MSBPC!(532, 0x8)()); }
		bool bAIShouldIgnorePain() { mixin(MGBPC!(532, 0x4)()); }
		bool bAIShouldIgnorePain(bool val) { mixin(MSBPC!(532, 0x4)()); }
		bool bVelocityAffectsWalking() { mixin(MGBPC!(532, 0x1)()); }
		bool bVelocityAffectsWalking(bool val) { mixin(MSBPC!(532, 0x1)()); }
	}
final:
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGravityZ, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetZoneVelocityForActor(Actor TheActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetZoneVelocityForActor, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void PhysicsChangedFor(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PhysicsChangedFor, params.ptr, cast(void*)0);
	}
	void ActorEnteredVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorEnteredVolume, params.ptr, cast(void*)0);
	}
	void ActorLeavingVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorLeavingVolume, params.ptr, cast(void*)0);
	}
	void PawnEnteredVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredVolume, params.ptr, cast(void*)0);
	}
	void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeavingVolume, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CollisionChanged, cast(void*)0, cast(void*)0);
	}
	void TimerPop(VolumeTimer T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(VolumeTimer*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.TimerPop, params.ptr, cast(void*)0);
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void CausePainTo(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CausePainTo, params.ptr, cast(void*)0);
	}
	void ModifyPlayer(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPlayer, params.ptr, cast(void*)0);
	}
	void NotifyPawnBecameViewTarget(Pawn P, PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPawnBecameViewTarget, params.ptr, cast(void*)0);
	}
	void OnSetDamageInstigator(SeqAct_SetDamageInstigator Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetDamageInstigator*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetDamageInstigator, params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(ref PhysicsVolume.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(PhysicsVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in PhysicsVolume.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume.CheckpointRecord*)params.ptr = cast(PhysicsVolume.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
