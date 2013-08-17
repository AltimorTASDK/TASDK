module UnrealScript.Engine.AmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundSimpleToggleable : AmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AmbientSoundSimpleToggleable")()); }
	private static __gshared AmbientSoundSimpleToggleable mDefaultProperties;
	@property final static AmbientSoundSimpleToggleable DefaultProperties() { mixin(MGDPC!(AmbientSoundSimpleToggleable, "AmbientSoundSimpleToggleable Engine.Default__AmbientSoundSimpleToggleable")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mStartPlaying;
			ScriptFunction mStopPlaying;
			ScriptFunction mOnToggle;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.AmbientSoundSimpleToggleable.PostBeginPlay")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.AmbientSoundSimpleToggleable.ReplicatedEvent")()); }
			ScriptFunction StartPlaying() { mixin(MGF!("mStartPlaying", "Function Engine.AmbientSoundSimpleToggleable.StartPlaying")()); }
			ScriptFunction StopPlaying() { mixin(MGF!("mStopPlaying", "Function Engine.AmbientSoundSimpleToggleable.StopPlaying")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.AmbientSoundSimpleToggleable.OnToggle")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.AmbientSoundSimpleToggleable.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.AmbientSoundSimpleToggleable.ApplyCheckpointRecord")()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AmbientSoundSimpleToggleable.CheckpointRecord")()); }
		@property final
		{
			bool bCurrentlyPlaying() { mixin(MGBPS!(0, 0x1)()); }
			bool bCurrentlyPlaying(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			float FadeOutVolumeLevel() { mixin(MGPC!("float", 516)()); }
			float FadeOutDuration() { mixin(MGPC!("float", 512)()); }
			float FadeInVolumeLevel() { mixin(MGPC!("float", 508)()); }
			float FadeInDuration() { mixin(MGPC!("float", 504)()); }
		}
		bool bIgnoreAutoPlay() { mixin(MGBPC!(500, 0x4)()); }
		bool bIgnoreAutoPlay(bool val) { mixin(MSBPC!(500, 0x4)()); }
		bool bFadeOnToggle() { mixin(MGBPC!(500, 0x2)()); }
		bool bFadeOnToggle(bool val) { mixin(MSBPC!(500, 0x2)()); }
		bool bCurrentlyPlaying() { mixin(MGBPC!(500, 0x1)()); }
		bool bCurrentlyPlaying(bool val) { mixin(MSBPC!(500, 0x1)()); }
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
	void StartPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartPlaying, cast(void*)0, cast(void*)0);
	}
	void StopPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopPlaying, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void CreateCheckpointRecord(ref AmbientSoundSimpleToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in AmbientSoundSimpleToggleable.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = cast(AmbientSoundSimpleToggleable.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
}
