module UnrealScript.OnlineSubsystemMcts.OnlineVoiceInterfaceMcts;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SpeechRecognition;

extern(C++) interface OnlineVoiceInterfaceMcts : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class OnlineSubsystemMcts.OnlineVoiceInterfaceMcts")()); }
	private static __gshared OnlineVoiceInterfaceMcts mDefaultProperties;
	@property final static OnlineVoiceInterfaceMcts DefaultProperties() { mixin(MGDPC!(OnlineVoiceInterfaceMcts, "OnlineVoiceInterfaceMcts OnlineSubsystemMcts.Default__OnlineVoiceInterfaceMcts")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRecognitionComplete;
			ScriptFunction mOnPlayerTalkingStateChange;
			ScriptFunction mRegisterLocalTalker;
			ScriptFunction mUnregisterLocalTalker;
			ScriptFunction mRegisterRemoteTalker;
			ScriptFunction mUnregisterRemoteTalker;
			ScriptFunction mIsLocalPlayerTalking;
			ScriptFunction mIsRemotePlayerTalking;
			ScriptFunction mIsHeadsetPresent;
			ScriptFunction mSetRemoteTalkerPriority;
			ScriptFunction mMuteRemoteTalker;
			ScriptFunction mUnmuteRemoteTalker;
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
			ScriptFunction OnRecognitionComplete() { mixin(MGF!("mOnRecognitionComplete", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.OnRecognitionComplete")()); }
			ScriptFunction OnPlayerTalkingStateChange() { mixin(MGF!("mOnPlayerTalkingStateChange", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.OnPlayerTalkingStateChange")()); }
			ScriptFunction RegisterLocalTalker() { mixin(MGF!("mRegisterLocalTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.RegisterLocalTalker")()); }
			ScriptFunction UnregisterLocalTalker() { mixin(MGF!("mUnregisterLocalTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.UnregisterLocalTalker")()); }
			ScriptFunction RegisterRemoteTalker() { mixin(MGF!("mRegisterRemoteTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.RegisterRemoteTalker")()); }
			ScriptFunction UnregisterRemoteTalker() { mixin(MGF!("mUnregisterRemoteTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.UnregisterRemoteTalker")()); }
			ScriptFunction IsLocalPlayerTalking() { mixin(MGF!("mIsLocalPlayerTalking", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.IsLocalPlayerTalking")()); }
			ScriptFunction IsRemotePlayerTalking() { mixin(MGF!("mIsRemotePlayerTalking", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.IsRemotePlayerTalking")()); }
			ScriptFunction IsHeadsetPresent() { mixin(MGF!("mIsHeadsetPresent", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.IsHeadsetPresent")()); }
			ScriptFunction SetRemoteTalkerPriority() { mixin(MGF!("mSetRemoteTalkerPriority", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.SetRemoteTalkerPriority")()); }
			ScriptFunction MuteRemoteTalker() { mixin(MGF!("mMuteRemoteTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.MuteRemoteTalker")()); }
			ScriptFunction UnmuteRemoteTalker() { mixin(MGF!("mUnmuteRemoteTalker", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.UnmuteRemoteTalker")()); }
			ScriptFunction AddPlayerTalkingDelegate() { mixin(MGF!("mAddPlayerTalkingDelegate", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.AddPlayerTalkingDelegate")()); }
			ScriptFunction ClearPlayerTalkingDelegate() { mixin(MGF!("mClearPlayerTalkingDelegate", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.ClearPlayerTalkingDelegate")()); }
			ScriptFunction StartNetworkedVoice() { mixin(MGF!("mStartNetworkedVoice", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.StartNetworkedVoice")()); }
			ScriptFunction StopNetworkedVoice() { mixin(MGF!("mStopNetworkedVoice", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.StopNetworkedVoice")()); }
			ScriptFunction StartSpeechRecognition() { mixin(MGF!("mStartSpeechRecognition", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.StartSpeechRecognition")()); }
			ScriptFunction StopSpeechRecognition() { mixin(MGF!("mStopSpeechRecognition", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.StopSpeechRecognition")()); }
			ScriptFunction GetRecognitionResults() { mixin(MGF!("mGetRecognitionResults", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.GetRecognitionResults")()); }
			ScriptFunction AddRecognitionCompleteDelegate() { mixin(MGF!("mAddRecognitionCompleteDelegate", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.AddRecognitionCompleteDelegate")()); }
			ScriptFunction ClearRecognitionCompleteDelegate() { mixin(MGF!("mClearRecognitionCompleteDelegate", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.ClearRecognitionCompleteDelegate")()); }
			ScriptFunction SelectVocabulary() { mixin(MGF!("mSelectVocabulary", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.SelectVocabulary")()); }
			ScriptFunction SetSpeechRecognitionObject() { mixin(MGF!("mSetSpeechRecognitionObject", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.SetSpeechRecognitionObject")()); }
			ScriptFunction MuteAll() { mixin(MGF!("mMuteAll", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.MuteAll")()); }
			ScriptFunction UnmuteAll() { mixin(MGF!("mUnmuteAll", "Function OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.UnmuteAll")()); }
		}
	}
	enum EMuteType : ubyte
	{
		MUTE_None = 0,
		MUTE_AllButFriends = 1,
		MUTE_All = 2,
		MUTE_MAX = 3,
	}
	struct LocalTalkerMcts
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct OnlineSubsystemMcts.OnlineVoiceInterfaceMcts.LocalTalkerMcts")()); }
		@property final
		{
			@property final auto ref OnlineVoiceInterfaceMcts.EMuteType MuteType() { mixin(MGPS!("OnlineVoiceInterfaceMcts.EMuteType", 4)()); }
			bool bIsRegistered() { mixin(MGBPS!(0, 0x20)()); }
			bool bIsRegistered(bool val) { mixin(MSBPS!(0, 0x20)()); }
			bool bIsTalking() { mixin(MGBPS!(0, 0x10)()); }
			bool bIsTalking(bool val) { mixin(MSBPS!(0, 0x10)()); }
			bool bWasTalking() { mixin(MGBPS!(0, 0x8)()); }
			bool bWasTalking(bool val) { mixin(MSBPS!(0, 0x8)()); }
			bool bIsRecognizingSpeech() { mixin(MGBPS!(0, 0x4)()); }
			bool bIsRecognizingSpeech(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool bHasNetworkedVoice() { mixin(MGBPS!(0, 0x2)()); }
			bool bHasNetworkedVoice(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bHasVoice() { mixin(MGBPS!(0, 0x1)()); }
			bool bHasVoice(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.RemoteTalker) RemoteTalkers() { mixin(MGPC!("ScriptArray!(OnlineSubsystem.RemoteTalker)", 76)()); }
		ScriptArray!(OnlineSubsystem.UniqueNetId) MuteList() { mixin(MGPC!("ScriptArray!(OnlineSubsystem.UniqueNetId)", 88)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) SpeechRecognitionCompleteDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 100)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) TalkingDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 112)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRecognitionComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPlayerTalkingStateChange__Delegate'!
		OnlineVoiceInterfaceMcts.LocalTalkerMcts CurrentLocalTalker() { mixin(MGPC!("OnlineVoiceInterfaceMcts.LocalTalkerMcts", 68)()); }
		UObject.Pointer VoiceEnginePtr() { mixin(MGPC!("UObject.Pointer", 64)()); }
		UObject.Pointer MctsSubsystem() { mixin(MGPC!("UObject.Pointer", 60)()); }
	}
final:
	void OnRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRecognitionComplete, cast(void*)0, cast(void*)0);
	}
	void OnPlayerTalkingStateChange(OnlineSubsystem.UniqueNetId pPlayer, bool bIsTalking)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		*cast(bool*)&params[8] = bIsTalking;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayerTalkingStateChange, params.ptr, cast(void*)0);
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
	bool MuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool* bIsSystemWide = null)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		if (bIsSystemWide !is null)
			*cast(bool*)&params[12] = *bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(Functions.MuteRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool UnmuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool* bIsSystemWide = null)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		if (bIsSystemWide !is null)
			*cast(bool*)&params[12] = *bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnmuteRemoteTalker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
		Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
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
