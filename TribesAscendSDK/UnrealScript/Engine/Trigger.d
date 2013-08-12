module UnrealScript.Engine.Trigger;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface Trigger : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Trigger")); }
	private static __gshared Trigger mDefaultProperties;
	@property final static Trigger DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Trigger)("Trigger Engine.Default__Trigger")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mNotifyTriggered;
			ScriptFunction mUnTrigger;
			ScriptFunction mStopsProjectile;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.Touch")); }
			ScriptFunction NotifyTriggered() { return mNotifyTriggered ? mNotifyTriggered : (mNotifyTriggered = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.NotifyTriggered")); }
			ScriptFunction UnTrigger() { return mUnTrigger ? mUnTrigger : (mUnTrigger = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.UnTrigger")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.StopsProjectile")); }
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Trigger.CheckpointRecord")); }
		@property final
		{
			bool bCollideActors() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		@property final auto ref float AITriggerDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		bool bRecentlyTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bRecentlyTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
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
	void NotifyTriggered()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTriggered, cast(void*)0, cast(void*)0);
	}
	void UnTrigger()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTrigger, cast(void*)0, cast(void*)0);
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(Trigger.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(Trigger.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(Trigger.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(Trigger.CheckpointRecord*)params.ptr;
	}
}
