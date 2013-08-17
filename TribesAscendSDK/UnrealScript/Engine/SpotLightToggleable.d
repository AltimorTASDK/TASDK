module UnrealScript.Engine.SpotLightToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpotLight;

extern(C++) interface SpotLightToggleable : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SpotLightToggleable")); }
	private static __gshared SpotLightToggleable mDefaultProperties;
	@property final static SpotLightToggleable DefaultProperties() { mixin(MGDPC("SpotLightToggleable", "SpotLightToggleable Engine.Default__SpotLightToggleable")); }
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
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF("mShouldSaveForCheckpoint", "Function Engine.SpotLightToggleable.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.SpotLightToggleable.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.SpotLightToggleable.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SpotLightToggleable.CheckpointRecord")); }
		@property final
		{
			bool bEnabled() { mixin(MGBPS(0, 0x1)); }
			bool bEnabled(bool val) { mixin(MSBPS(0, 0x1)); }
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
	void CreateCheckpointRecord(ref SpotLightToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(SpotLightToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in SpotLightToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = cast(SpotLightToggleable.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
