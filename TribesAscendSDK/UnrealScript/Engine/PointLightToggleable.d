module UnrealScript.Engine.PointLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightToggleable : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PointLightToggleable")); }
	private static __gshared PointLightToggleable mDefaultProperties;
	@property final static PointLightToggleable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PointLightToggleable)("PointLightToggleable Engine.Default__PointLightToggleable")); }
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
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.PointLightToggleable.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.PointLightToggleable.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.PointLightToggleable.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PointLightToggleable.CheckpointRecord")); }
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
	void CreateCheckpointRecord(PointLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(PointLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
}
