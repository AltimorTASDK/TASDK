module UnrealScript.UTGame.UTCTFBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTCTFBase : UTGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFBase")); }
	private static __gshared UTCTFBase mDefaultProperties;
	@property final static UTCTFBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTCTFBase)("UTCTFBase UTGame.Default__UTCTFBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetBestViewTarget;
			ScriptFunction mGetLocationMessageIndex;
			ScriptFunction mGetLocationSpeechFor;
			ScriptFunction mObjectiveChanged;
			ScriptFunction mGetFlag;
			ScriptFunction mSetAlarm;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mIsActive;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.PostBeginPlay")); }
			ScriptFunction GetBestViewTarget() { return mGetBestViewTarget ? mGetBestViewTarget : (mGetBestViewTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.GetBestViewTarget")); }
			ScriptFunction GetLocationMessageIndex() { return mGetLocationMessageIndex ? mGetLocationMessageIndex : (mGetLocationMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.GetLocationMessageIndex")); }
			ScriptFunction GetLocationSpeechFor() { return mGetLocationSpeechFor ? mGetLocationSpeechFor : (mGetLocationSpeechFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.GetLocationSpeechFor")); }
			ScriptFunction ObjectiveChanged() { return mObjectiveChanged ? mObjectiveChanged : (mObjectiveChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.ObjectiveChanged")); }
			ScriptFunction GetFlag() { return mGetFlag ? mGetFlag : (mGetFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.GetFlag")); }
			ScriptFunction SetAlarm() { return mSetAlarm ? mSetAlarm : (mSetAlarm = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.SetAlarm")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.ReplicatedEvent")); }
			ScriptFunction IsActive() { return mIsActive ? mIsActive : (mIsActive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFBase.IsActive")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SoundNodeWave) NearLocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1076); }
		ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1088); }
		ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1100); }
		ScriptClass CTFAnnouncerMessagesClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1072); }
		MaterialInstanceConstant MIC_FlagBaseColor() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1064); }
		MaterialInstanceConstant FlagBaseMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
		float BaseExitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
		float NearBaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
		float MidFieldLowZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
		float MidFieldHighZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
		ScriptClass FlagType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1036); }
		UTCarriedObject myFlag() { return *cast(UTCarriedObject*)(cast(size_t)cast(void*)this + 1032); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestViewTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationSpeechFor, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ObjectiveChanged, cast(void*)0, cast(void*)0);
	}
	UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlag, params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	void SetAlarm(bool bNowOn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlarm, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
