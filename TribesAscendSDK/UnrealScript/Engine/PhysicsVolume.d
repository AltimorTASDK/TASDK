module UnrealScript.Engine.PhysicsVolume;

import ScriptClasses;
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
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bActive() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bPainCausing() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bPainCausing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float DamagePerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			PhysicsVolume NextPhysicsVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 580); }
			Controller DamageInstigator() { return *cast(Controller*)(cast(size_t)cast(void*)this + 576); }
			Info PainTimer() { return *cast(Info*)(cast(size_t)cast(void*)this + 572); }
			float MaxDampingForce() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float RigidBodyDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float PainInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float FluidFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			int Priority() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			float TerminalVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			float GroundFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			Vector ZoneVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bPainCausing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bPainCausing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bWaterVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000) != 0; }
		bool bWaterVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000; } return val; }
		bool bPhysicsOnContact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800) != 0; }
		bool bPhysicsOnContact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800; } return val; }
		bool bCrowdAgentsPlayDeathAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400) != 0; }
		bool bCrowdAgentsPlayDeathAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400; } return val; }
		bool bNeutralZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200) != 0; }
		bool bNeutralZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200; } return val; }
		bool bBounceVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100) != 0; }
		bool bBounceVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100; } return val; }
		bool bMoveProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
		bool bMoveProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
		bool bNoInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
		bool bNoInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
		bool bDestructive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
		bool bDestructive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
		bool BACKUP_bPainCausing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
		bool BACKUP_bPainCausing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
		bool bEntryPain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bEntryPain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bAIShouldIgnorePain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bAIShouldIgnorePain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bVelocityAffectsWalking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bVelocityAffectsWalking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14428], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetZoneVelocityForActor(Actor TheActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14430], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14433], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14435], cast(void*)0, cast(void*)0);
	}
	void PhysicsChangedFor(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14436], params.ptr, cast(void*)0);
	}
	void ActorEnteredVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14438], params.ptr, cast(void*)0);
	}
	void ActorLeavingVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14440], params.ptr, cast(void*)0);
	}
	void PawnEnteredVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14442], params.ptr, cast(void*)0);
	}
	void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14444], params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14446], params.ptr, cast(void*)0);
	}
	void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14448], cast(void*)0, cast(void*)0);
	}
	void TimerPop(VolumeTimer T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(VolumeTimer*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14449], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14452], params.ptr, cast(void*)0);
	}
	void CausePainTo(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14457], params.ptr, cast(void*)0);
	}
	void ModifyPlayer(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14460], params.ptr, cast(void*)0);
	}
	void NotifyPawnBecameViewTarget(Pawn P, PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14462], params.ptr, cast(void*)0);
	}
	void OnSetDamageInstigator(SeqAct_SetDamageInstigator Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetDamageInstigator*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14465], params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14469], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(PhysicsVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14471], params.ptr, cast(void*)0);
		*Record = *cast(PhysicsVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(PhysicsVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14473], params.ptr, cast(void*)0);
		*Record = *cast(PhysicsVolume.CheckpointRecord*)params.ptr;
	}
}
