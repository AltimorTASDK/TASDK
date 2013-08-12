module UnrealScript.Engine.OnlineVoiceInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineVoiceInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineVoiceInterface")); }
	private static __gshared OnlineVoiceInterface mDefaultProperties;
	@property final static OnlineVoiceInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineVoiceInterface)("OnlineVoiceInterface Engine.Default__OnlineVoiceInterface")); }
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
			ScriptFunction MuteRemoteTalker() { return mMuteRemoteTalker ? mMuteRemoteTalker : (mMuteRemoteTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.MuteRemoteTalker")); }
			ScriptFunction UnmuteRemoteTalker() { return mUnmuteRemoteTalker ? mUnmuteRemoteTalker : (mUnmuteRemoteTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.UnmuteRemoteTalker")); }
			ScriptFunction RegisterLocalTalker() { return mRegisterLocalTalker ? mRegisterLocalTalker : (mRegisterLocalTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.RegisterLocalTalker")); }
			ScriptFunction UnregisterLocalTalker() { return mUnregisterLocalTalker ? mUnregisterLocalTalker : (mUnregisterLocalTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.UnregisterLocalTalker")); }
			ScriptFunction RegisterRemoteTalker() { return mRegisterRemoteTalker ? mRegisterRemoteTalker : (mRegisterRemoteTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.RegisterRemoteTalker")); }
			ScriptFunction UnregisterRemoteTalker() { return mUnregisterRemoteTalker ? mUnregisterRemoteTalker : (mUnregisterRemoteTalker = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.UnregisterRemoteTalker")); }
			ScriptFunction IsLocalPlayerTalking() { return mIsLocalPlayerTalking ? mIsLocalPlayerTalking : (mIsLocalPlayerTalking = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.IsLocalPlayerTalking")); }
			ScriptFunction IsRemotePlayerTalking() { return mIsRemotePlayerTalking ? mIsRemotePlayerTalking : (mIsRemotePlayerTalking = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.IsRemotePlayerTalking")); }
			ScriptFunction IsHeadsetPresent() { return mIsHeadsetPresent ? mIsHeadsetPresent : (mIsHeadsetPresent = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.IsHeadsetPresent")); }
			ScriptFunction SetRemoteTalkerPriority() { return mSetRemoteTalkerPriority ? mSetRemoteTalkerPriority : (mSetRemoteTalkerPriority = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.SetRemoteTalkerPriority")); }
			ScriptFunction OnPlayerTalkingStateChange() { return mOnPlayerTalkingStateChange ? mOnPlayerTalkingStateChange : (mOnPlayerTalkingStateChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.OnPlayerTalkingStateChange")); }
			ScriptFunction OnRecognitionComplete() { return mOnRecognitionComplete ? mOnRecognitionComplete : (mOnRecognitionComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.OnRecognitionComplete")); }
			ScriptFunction AddPlayerTalkingDelegate() { return mAddPlayerTalkingDelegate ? mAddPlayerTalkingDelegate : (mAddPlayerTalkingDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.AddPlayerTalkingDelegate")); }
			ScriptFunction ClearPlayerTalkingDelegate() { return mClearPlayerTalkingDelegate ? mClearPlayerTalkingDelegate : (mClearPlayerTalkingDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.ClearPlayerTalkingDelegate")); }
			ScriptFunction StartNetworkedVoice() { return mStartNetworkedVoice ? mStartNetworkedVoice : (mStartNetworkedVoice = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.StartNetworkedVoice")); }
			ScriptFunction StopNetworkedVoice() { return mStopNetworkedVoice ? mStopNetworkedVoice : (mStopNetworkedVoice = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.StopNetworkedVoice")); }
			ScriptFunction StartSpeechRecognition() { return mStartSpeechRecognition ? mStartSpeechRecognition : (mStartSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.StartSpeechRecognition")); }
			ScriptFunction StopSpeechRecognition() { return mStopSpeechRecognition ? mStopSpeechRecognition : (mStopSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.StopSpeechRecognition")); }
			ScriptFunction GetRecognitionResults() { return mGetRecognitionResults ? mGetRecognitionResults : (mGetRecognitionResults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.GetRecognitionResults")); }
			ScriptFunction AddRecognitionCompleteDelegate() { return mAddRecognitionCompleteDelegate ? mAddRecognitionCompleteDelegate : (mAddRecognitionCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.AddRecognitionCompleteDelegate")); }
			ScriptFunction ClearRecognitionCompleteDelegate() { return mClearRecognitionCompleteDelegate ? mClearRecognitionCompleteDelegate : (mClearRecognitionCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.ClearRecognitionCompleteDelegate")); }
			ScriptFunction SelectVocabulary() { return mSelectVocabulary ? mSelectVocabulary : (mSelectVocabulary = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.SelectVocabulary")); }
			ScriptFunction SetSpeechRecognitionObject() { return mSetSpeechRecognitionObject ? mSetSpeechRecognitionObject : (mSetSpeechRecognitionObject = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.SetSpeechRecognitionObject")); }
			ScriptFunction MuteAll() { return mMuteAll ? mMuteAll : (mMuteAll = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.MuteAll")); }
			ScriptFunction UnmuteAll() { return mUnmuteAll ? mUnmuteAll : (mUnmuteAll = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineVoiceInterface.UnmuteAll")); }
		}
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
	bool GetRecognitionResults(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
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
