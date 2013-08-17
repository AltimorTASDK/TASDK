module UnrealScript.Engine.LevelStreamingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelStreamingVolume")); }
	private static __gshared LevelStreamingVolume mDefaultProperties;
	@property final static LevelStreamingVolume DefaultProperties() { mixin(MGDPC("LevelStreamingVolume", "LevelStreamingVolume Engine.Default__LevelStreamingVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnToggle;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.LevelStreamingVolume.OnToggle")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.LevelStreamingVolume.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.LevelStreamingVolume.ApplyCheckpointRecord")); }
		}
	}
	enum EStreamingVolumeUsage : ubyte
	{
		SVB_Loading = 0,
		SVB_LoadingAndVisibility = 1,
		SVB_VisibilityBlockingOnLoad = 2,
		SVB_BlockingOnLoad = 3,
		SVB_LoadingNotVisible = 4,
		SVB_MAX = 5,
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.LevelStreamingVolume.CheckpointRecord")); }
		@property final
		{
			bool bDisabled() { mixin(MGBPS(0, 0x1)); }
			bool bDisabled(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LevelStreaming) StreamingLevels() { mixin(MGPC("ScriptArray!(LevelStreaming)", 520)); }
			float TestVolumeDistance() { mixin(MGPC("float", 540)); }
			LevelStreamingVolume.EStreamingVolumeUsage Usage() { mixin(MGPC("LevelStreamingVolume.EStreamingVolumeUsage", 537)); }
			LevelStreamingVolume.EStreamingVolumeUsage StreamingUsage() { mixin(MGPC("LevelStreamingVolume.EStreamingVolumeUsage", 536)); }
		}
		bool bTestDistanceToVolume() { mixin(MGBPC(532, 0x4)); }
		bool bTestDistanceToVolume(bool val) { mixin(MSBPC(532, 0x4)); }
		bool bDisabled() { mixin(MGBPC(532, 0x2)); }
		bool bDisabled(bool val) { mixin(MSBPC(532, 0x2)); }
		bool bEditorPreVisOnly() { mixin(MGBPC(532, 0x1)); }
		bool bEditorPreVisOnly(bool val) { mixin(MSBPC(532, 0x1)); }
	}
final:
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void CreateCheckpointRecord(ref LevelStreamingVolume.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(LevelStreamingVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in LevelStreamingVolume.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = cast(LevelStreamingVolume.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
