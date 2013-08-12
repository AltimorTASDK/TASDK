module UnrealScript.Engine.DynamicBlockingVolume;

import ScriptClasses;
import UnrealScript.Engine.BlockingVolume;

extern(C++) interface DynamicBlockingVolume : BlockingVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicBlockingVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicBlockingVolume.PostBeginPlay")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicBlockingVolume.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicBlockingVolume.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.DynamicBlockingVolume.CheckpointRecord")); }
		@property final
		{
			auto ref
			{
				Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
				Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
			}
			bool bNeedsReplication() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
			bool bNeedsReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
			bool bBlockActors() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bBlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bCollideActors() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CreateCheckpointRecord(DynamicBlockingVolume.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(DynamicBlockingVolume.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
}
