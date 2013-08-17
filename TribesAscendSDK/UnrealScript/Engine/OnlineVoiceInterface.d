module UnrealScript.Engine.OnlineVoiceInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineVoiceInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineVoiceInterface")()); }
	private static __gshared OnlineVoiceInterface mDefaultProperties;
	@property final static OnlineVoiceInterface DefaultProperties() { mixin(MGDPC!(OnlineVoiceInterface, "OnlineVoiceInterface Engine.Default__OnlineVoiceInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMuteRemoteTalker;
			ScriptFunction mUnmuteRemoteTalker;
			ScriptFunction mRegisterLocalTalker;
			ScriptFunction mUnregisterLocalTalker;
			ScriptFunction mRegisterRemoteTalker;
			ScriptFunction mUnregisterRemoteTalker;
			ScriptFunction mIsLocalPlayerTalking;
			ScriptFunction mIsRemotePlayerTalking;
			ScriptFunction mIsHeadsetPresent;
			ScriptFunction mSetRemoteTalkerPriority;
			ScriptFunction mOnPlayerTalkingStateChange;
			ScriptFunction mOnRecognitionComplete;
			ScriptFunction mAddPlayerTalkingDelegate;
			ScriptFunction mClearPlayerTalkingDelegate;
			ScriptFunction mStartNetworkedVoice;
			ScriptFunction mStopNetworkedVoice;
			ScriptFunction mStartSpeechRecognition;
			ScriptFunction mStopSpeechRecognition;
			ScriptFunction mGetRecognitionResults;
			ScriptFunction mAddRecognitionCompleteDelegate;
			ScriptFunction mClearRecognitionCompleteDelegate;
			ScriptFunction mSelectVocabulary;
			ScriptFunction mSetSpeechRecognitionObject;
			ScriptFunction mMuteAll;
			ScriptFunction mUnmuteAll;
		}
		public @property static final
		{
			ScriptFunction MuteRemoteTalker() { mixin(MGF!("mMuteRemoteTalker", "Function Engine.OnlineVoiceInterface.MuteRemoteTalker")()); }
			ScriptFunction UnmuteRemoteTalker() { mixin(MGF!("mUnmuteRemoteTalker", "Function Engine.OnlineVoiceInterface.UnmuteRemoteTalker")()); }
			ScriptFunction RegisterLocalTalker() { mixin(MGF!("mRegisterLocalTalker", "Function Engine.OnlineVoiceInterface.RegisterLocalTalker")()); }
			ScriptFunction UnregisterLocalTalker() { mixin(MGF!("mUnregisterLocalTalker", "Function Engine.OnlineVoiceInterface.UnregisterLocalTalker")()); }
			ScriptFunction RegisterRemoteTalker() { mixin(MGF!("mRegisterRemoteTalker", "Function Engine.OnlineVoiceInterface.RegisterRemoteTalker")()); }
			ScriptFunction UnregisterRemoteTalker() { mixin(MGF!("mUnregisterRemoteTalker", "Function Engine.OnlineVoiceInterface.UnregisterRemoteTalker")()); }
			ScriptFunction IsLocalPlayerTalking() { mixin(MGF!("mIsLocalPlayerTalking", "Function Engine.OnlineVoiceInterface.IsLocalPlayerTalking")()); }
			ScriptFunction IsRemotePlayerTalking() { mixin(MGF!("mIsRemotePlayerTalking", "Function Engine.OnlineVoiceInterface.IsRemotePlayerTalking")()); }
			ScriptFunction IsHeadsetPresent() { mixin(MGF!("mIsHeadsetPresent", "Function Engine.OnlineVoiceInterface.IsHeadsetPresent")()); }
			ScriptFunction SetRemoteTalkerPriority() { mixin(MGF!("mSetRemoteTalkerPriority", "Function Engine.OnlineVoiceInterface.SetRemoteTalkerPriority")()); }
			ScriptFunction OnPlayerTalkingStateChange() { mixin(MGF!("mOnPlayerTalkingStateChange", "Function Engine.OnlineVoiceInterface.OnPlayerTalkingStateChange")()); }
			ScriptFunction OnRecognitionComplete() { mixin(MGF!("mOnRecognitionComplete", "Function Engine.OnlineVoiceInterface.OnRecognitionComplete")()); }
			ScriptFunction AddPlayerTalkingDelegate() { mixin(MGF!("mAddPlayerTalkingDelegate", "Function Engine.OnlineVoiceInterface.AddPlayerTalkingDelegate")()); }
			ScriptFunction ClearPlayerTalkingDelegate() { mixin(MGF!("mClearPlayerTalkingDelegate", "Function Engine.OnlineVoiceInterface.ClearPlayerTalkingDelegate")()); }
			ScriptFunction StartNetworkedVoice() { mixin(MGF!("mStartNetworkedVoice", "Function Engine.OnlineVoiceInterface.StartNetworkedVoice")()); }
			ScriptFunction StopNetworkedVoice() { mixin(MGF!("mStopNetworkedVoice", "Function Engine.OnlineVoiceInterface.StopNetworkedVoice")()); }
			ScriptFunction StartSpeechRecognition() { mixin(MGF!("mStartSpeechRecognition", "Function Engine.OnlineVoiceInterface.StartSpeechRecognition")()); }
			ScriptFunction StopSpeechRecognition() { mixin(MGF!("mStopSpeechRecognition", "Function Engine.OnlineVoiceInterface.StopSpeechRecognition")()); }
			ScriptFunction GetRecognitionResults() { mixin(MGF!("mGetRecognitionResults", "Function Engine.OnlineVoiceInterface.GetRecognitionResults")()); }
			ScriptFunction AddRecognitionCompleteDelegate() { mixin(MGF!("mAddRecognitionCompleteDelegate", "Function Engine.OnlineVoiceInterface.AddRecognitionCompleteDelegate")()); }
			ScriptFunction ClearRecognitionCompleteDelegate() { mixin(MGF!("mClearRecognitionCompleteDelegate", "Function Engine.OnlineVoiceInterface.ClearRecognitionCompleteDelegate")()); }
			ScriptFunction SelectVocabulary() { mixin(MGF!("mSelectVocabulary", "Function Engine.OnlineVoiceInterface.SelectVocabulary")()); }
			ScriptFunction SetSpeechRecognitionObject() { mixin(MGF!("mSetSpeechRecognitionObject", "Function Engine.OnlineVoiceInterface.SetSpeechRecognitionObject")()); }
			ScriptFunction MuteAll() { mixin(MGF!("mMuteAll", "Function Engine.OnlineVoiceInterface.MuteAll")()); }
			ScriptFunction UnmuteAll() { mixin(MGF!("mUnmuteAll", "Function Engine.OnlineVoiceInterface.UnmuteAll")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRecognitionComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPlayerTalkingStateChange__Delegate'!
	}
final:
	bool MuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(Functions.MuteRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool UnmuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnmuteRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool RegisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterLocalTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool UnregisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterLocalTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RegisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnregisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsLocalPlayerTalking(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalPlayerTalking, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsRemotePlayerTalking(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRemotePlayerTalking, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsHeadsetPresent(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsHeadsetPresent, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetRemoteTalkerPriority(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, int Priority)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(int*)&params[12] = Priority;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRemoteTalkerPriority, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void OnPlayerTalkingStateChange(OnlineSubsystem.UniqueNetId pPlayer, bool bIsTalking)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		*cast(bool*)&params[8] = bIsTalking;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayerTalkingStateChange, params.ptr, cast(void*)0);
	}
	void OnRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRecognitionComplete, cast(void*)0, cast(void*)0);
	}
	void AddPlayerTalkingDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* TalkerDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = TalkerDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPlayerTalkingDelegate, params.ptr, cast(void*)0);
	}
	void ClearPlayerTalkingDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* TalkerDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = TalkerDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPlayerTalkingDelegate, params.ptr, cast(void*)0);
	}
	void StartNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartNetworkedVoice, params.ptr, cast(void*)0);
	}
	void StopNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopNetworkedVoice, params.ptr, cast(void*)0);
	}
	bool StartSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartSpeechRecognition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSpeechRecognition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetRecognitionResults(ubyte LocalUserNum, ref ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRecognitionResults, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		return *cast(bool*)&params[16];
	}
	void AddRecognitionCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RecognitionDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = RecognitionDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRecognitionCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearRecognitionCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RecognitionDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = RecognitionDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRecognitionCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool SelectVocabulary(ubyte LocalUserNum, int VocabularyId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = VocabularyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SelectVocabulary, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetSpeechRecognitionObject(ubyte LocalUserNum, SpeechRecognition SpeechRecogObj)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(SpeechRecognition*)&params[4] = SpeechRecogObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeechRecognitionObject, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MuteAll(ubyte LocalUserNum, bool bAllowFriends)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bAllowFriends;
		(cast(ScriptObject)this).ProcessEvent(Functions.MuteAll, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnmuteAll(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnmuteAll, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
