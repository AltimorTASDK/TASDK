module UnrealScript.Engine.AmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundSimpleToggleable : AmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundSimpleToggleable")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.ReplicatedEvent")); }
			ScriptFunction StartPlaying() { return mStartPlaying ? mStartPlaying : (mStartPlaying = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.StartPlaying")); }
			ScriptFunction StopPlaying() { return mStopPlaying ? mStopPlaying : (mStopPlaying = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.StopPlaying")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.OnToggle")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.AmbientSoundSimpleToggleable.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AmbientSoundSimpleToggleable.CheckpointRecord")); }
		@property final
		{
			bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float FadeOutVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float FadeOutDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float FadeInVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float FadeInDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		}
		bool bIgnoreAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
		bool bIgnoreAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
		bool bFadeOnToggle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bFadeOnToggle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
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
	void CreateCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
}
