module UnrealScript.Engine.SpotLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.SpotLight;

extern(C++) interface SpotLightToggleable : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpotLightToggleable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.SpotLightToggleable.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.SpotLightToggleable.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.SpotLightToggleable.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SpotLightToggleable.CheckpointRecord")); }
		@property final
		{
			bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
final:
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(SpotLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(SpotLightToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(SpotLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(SpotLightToggleable.CheckpointRecord*)params.ptr;
	}
}
