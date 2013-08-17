module UnrealScript.Engine.PointLightToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightToggleable : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PointLightToggleable")()); }
	private static __gshared PointLightToggleable mDefaultProperties;
	@property final static PointLightToggleable DefaultProperties() { mixin(MGDPC!(PointLightToggleable, "PointLightToggleable Engine.Default__PointLightToggleable")()); }
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
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF!("mShouldSaveForCheckpoint", "Function Engine.PointLightToggleable.ShouldSaveForCheckpoint")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.PointLightToggleable.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.PointLightToggleable.ApplyCheckpointRecord")()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PointLightToggleable.CheckpointRecord")()); }
		@property final
		{
			bool bEnabled() { mixin(MGBPS!(0, 0x1)()); }
			bool bEnabled(bool val) { mixin(MSBPS!(0, 0x1)()); }
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
	void CreateCheckpointRecord(ref PointLightToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref const PointLightToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
}
