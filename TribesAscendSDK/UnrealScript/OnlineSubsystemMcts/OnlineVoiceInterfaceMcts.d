module UnrealScript.OnlineSubsystemMcts.OnlineVoiceInterfaceMcts;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SpeechRecognition;

extern(C++) interface OnlineVoiceInterfaceMcts : UObject
{
public extern(D):
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
		@property final
		{
			@property final auto ref OnlineVoiceInterfaceMcts.EMuteType MuteType() { return *cast(OnlineVoiceInterfaceMcts.EMuteType*)(cast(size_t)&this + 4); }
			bool bIsRegistered() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool bIsRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
			bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool bWasTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool bWasTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool bIsRecognizingSpeech() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bIsRecognizingSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bHasNetworkedVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bHasNetworkedVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bHasVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bHasVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.RemoteTalker) RemoteTalkers() { return *cast(ScriptArray!(OnlineSubsystem.RemoteTalker)*)(cast(size_t)cast(void*)this + 76); }
		ScriptArray!(OnlineSubsystem.UniqueNetId) MuteList() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) SpeechRecognitionCompleteDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 100); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) TalkingDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 112); }
		OnlineVoiceInterfaceMcts.LocalTalkerMcts CurrentLocalTalker() { return *cast(OnlineVoiceInterfaceMcts.LocalTalkerMcts*)(cast(size_t)cast(void*)this + 68); }
		UObject.Pointer VoiceEnginePtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
		UObject.Pointer MctsSubsystem() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void OnRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157037], cast(void*)0, cast(void*)0);
	}
	void OnPlayerTalkingStateChange(OnlineSubsystem.UniqueNetId pPlayer, bool bIsTalking)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		*cast(bool*)&params[8] = bIsTalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157040], params.ptr, cast(void*)0);
	}
	bool RegisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157054], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool UnregisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157057], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RegisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157060], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnregisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157063], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsLocalPlayerTalking(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157066], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsRemotePlayerTalking(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157069], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsHeadsetPresent(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157072], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetRemoteTalkerPriority(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, int Priority)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(int*)&params[12] = Priority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool MuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157080], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool UnmuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157085], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157092], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157095], params.ptr, cast(void*)0);
	}
	void StartNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157098], params.ptr, cast(void*)0);
	}
	void StopNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157100], params.ptr, cast(void*)0);
	}
	bool StartSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157102], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157105], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetRecognitionResults(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157108], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157113], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157116], params.ptr, cast(void*)0);
	}
	bool SelectVocabulary(ubyte LocalUserNum, int VocabularyId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = VocabularyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157120], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetSpeechRecognitionObject(ubyte LocalUserNum, SpeechRecognition SpeechRecogObj)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(SpeechRecognition*)&params[4] = SpeechRecogObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157124], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MuteAll(ubyte LocalUserNum, bool bAllowFriends)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bAllowFriends;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157128], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnmuteAll(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[157132], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
