module UnrealScript.Engine.FogVolumeDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Info;

extern(C++) interface FogVolumeDensityInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FogVolumeDensityInfo")); }
	private static __gshared FogVolumeDensityInfo mDefaultProperties;
	@property final static FogVolumeDensityInfo DefaultProperties() { mixin(MGDPC("FogVolumeDensityInfo", "FogVolumeDensityInfo Engine.Default__FogVolumeDensityInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.FogVolumeDensityInfo.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.FogVolumeDensityInfo.ReplicatedEvent")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.FogVolumeDensityInfo.OnToggle")); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF("mShouldSaveForCheckpoint", "Function Engine.FogVolumeDensityInfo.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.FogVolumeDensityInfo.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.FogVolumeDensityInfo.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.FogVolumeDensityInfo.CheckpointRecord")); }
		@property final
		{
			bool bEnabled() { mixin(MGBPS(0, 0x1)); }
			bool bEnabled(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AutomaticMeshComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DensityComponent'!
		}
		bool bEnabled() { mixin(MGBPC(484, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(484, 0x1)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(ref FogVolumeDensityInfo.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in FogVolumeDensityInfo.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr = cast(FogVolumeDensityInfo.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
