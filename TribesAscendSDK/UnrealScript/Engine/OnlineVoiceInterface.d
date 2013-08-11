module UnrealScript.Engine.OnlineVoiceInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineVoiceInterface : UInterface
{
	final bool MuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9210], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool UnmuteRemoteTalker(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, bool bIsSystemWide)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(bool*)&params[12] = bIsSystemWide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9216], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool RegisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22986], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool UnregisterLocalTalker(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22989], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool RegisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22992], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UnregisterRemoteTalker(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22995], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsLocalPlayerTalking(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22998], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsRemotePlayerTalking(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23001], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsHeadsetPresent(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23004], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetRemoteTalkerPriority(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID, int Priority)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		*cast(int*)&params[12] = Priority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23007], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void OnPlayerTalkingStateChange(OnlineSubsystem.UniqueNetId Player, bool bIsTalking)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = Player;
		*cast(bool*)&params[8] = bIsTalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23018], params.ptr, cast(void*)0);
	}
	final void OnRecognitionComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23022], cast(void*)0, cast(void*)0);
	}
	final void AddPlayerTalkingDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* TalkerDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = TalkerDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23024], params.ptr, cast(void*)0);
	}
	final void ClearPlayerTalkingDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* TalkerDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = TalkerDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23026], params.ptr, cast(void*)0);
	}
	final void StartNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23028], params.ptr, cast(void*)0);
	}
	final void StopNetworkedVoice(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23030], params.ptr, cast(void*)0);
	}
	final bool StartSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23032], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool StopSpeechRecognition(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23035], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetRecognitionResults(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23038], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void AddRecognitionCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RecognitionDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = RecognitionDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23043], params.ptr, cast(void*)0);
	}
	final void ClearRecognitionCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* RecognitionDelegate)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[4] = RecognitionDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23046], params.ptr, cast(void*)0);
	}
	final bool SelectVocabulary(ubyte LocalUserNum, int VocabularyId)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = VocabularyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23049], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SetSpeechRecognitionObject(ubyte LocalUserNum, SpeechRecognition SpeechRecogObj)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(SpeechRecognition*)&params[4] = SpeechRecogObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23053], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool MuteAll(ubyte LocalUserNum, bool bAllowFriends)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(bool*)&params[4] = bAllowFriends;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23057], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UnmuteAll(ubyte LocalUserNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23061], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
