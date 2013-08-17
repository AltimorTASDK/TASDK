module UnrealScript.Engine.Trigger;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface Trigger : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Trigger")); }
	private static __gshared Trigger mDefaultProperties;
	@property final static Trigger DefaultProperties() { mixin(MGDPC("Trigger", "Trigger Engine.Default__Trigger")); }
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
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function Engine.Trigger.Touch")); }
			ScriptFunction NotifyTriggered() { mixin(MGF("mNotifyTriggered", "Function Engine.Trigger.NotifyTriggered")); }
			ScriptFunction UnTrigger() { mixin(MGF("mUnTrigger", "Function Engine.Trigger.UnTrigger")); }
			ScriptFunction StopsProjectile() { mixin(MGF("mStopsProjectile", "Function Engine.Trigger.StopsProjectile")); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF("mShouldSaveForCheckpoint", "Function Engine.Trigger.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.Trigger.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.Trigger.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Trigger.CheckpointRecord")); }
		@property final
		{
			bool bCollideActors() { mixin(MGBPS(0, 0x1)); }
			bool bCollideActors(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			float AITriggerDelay() { mixin(MGPC("float", 484)); }
			// WARNING: Property 'CylinderComponent' has the same name as a defined type!
		}
		bool bRecentlyTriggered() { mixin(MGBPC(480, 0x1)); }
		bool bRecentlyTriggered(bool val) { mixin(MSBPC(480, 0x1)); }
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
	void CreateCheckpointRecord(ref Trigger.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(Trigger.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in Trigger.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = cast(Trigger.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
