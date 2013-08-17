module UnrealScript.UTGame.UTCTFBase;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCTFBase")()); }
	private static __gshared UTCTFBase mDefaultProperties;
	@property final static UTCTFBase DefaultProperties() { mixin(MGDPC!(UTCTFBase, "UTCTFBase UTGame.Default__UTCTFBase")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTCTFBase.PostBeginPlay")()); }
			ScriptFunction GetBestViewTarget() { mixin(MGF!("mGetBestViewTarget", "Function UTGame.UTCTFBase.GetBestViewTarget")()); }
			ScriptFunction GetLocationMessageIndex() { mixin(MGF!("mGetLocationMessageIndex", "Function UTGame.UTCTFBase.GetLocationMessageIndex")()); }
			ScriptFunction GetLocationSpeechFor() { mixin(MGF!("mGetLocationSpeechFor", "Function UTGame.UTCTFBase.GetLocationSpeechFor")()); }
			ScriptFunction ObjectiveChanged() { mixin(MGF!("mObjectiveChanged", "Function UTGame.UTCTFBase.ObjectiveChanged")()); }
			ScriptFunction GetFlag() { mixin(MGF!("mGetFlag", "Function UTGame.UTCTFBase.GetFlag")()); }
			ScriptFunction SetAlarm() { mixin(MGF!("mSetAlarm", "Function UTGame.UTCTFBase.SetAlarm")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UTGame.UTCTFBase.ReplicatedEvent")()); }
			ScriptFunction IsActive() { mixin(MGF!("mIsActive", "Function UTGame.UTCTFBase.IsActive")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SoundNodeWave) NearLocationSpeech() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 1076)()); }
		ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 1088)()); }
		ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 1100)()); }
		ScriptClass CTFAnnouncerMessagesClass() { mixin(MGPC!("ScriptClass", 1072)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlagBaseMesh'!
		MaterialInstanceConstant MIC_FlagBaseColor() { mixin(MGPC!("MaterialInstanceConstant", 1064)()); }
		MaterialInstanceConstant FlagBaseMaterial() { mixin(MGPC!("MaterialInstanceConstant", 1060)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlagEmptyParticles'!
		float BaseExitTime() { mixin(MGPC!("float", 1052)()); }
		float NearBaseRadius() { mixin(MGPC!("float", 1048)()); }
		float MidFieldLowZOffset() { mixin(MGPC!("float", 1044)()); }
		float MidFieldHighZOffset() { mixin(MGPC!("float", 1040)()); }
		ScriptClass FlagType() { mixin(MGPC!("ScriptClass", 1036)()); }
		UTCarriedObject myFlag() { mixin(MGPC!("UTCarriedObject", 1032)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'TakenSound'!
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
