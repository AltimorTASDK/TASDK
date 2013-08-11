module UnrealScript.PlatformCommon.TgGameEngine;

import ScriptClasses;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TgGameEngine : GameEngine
{
	struct MAR_EVENT
	{
		public @property final auto ref UObject.Pointer pMarshal() { return *cast(UObject.Pointer*)(cast(size_t)&this + 40); }
		private ubyte __pMarshal[4];
		public @property final auto ref ScriptString fsMessage() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __fsMessage[12];
		public @property final auto ref int nStmMsgId() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __nStmMsgId[4];
		public @property final auto ref QWord qwInfo() { return *cast(QWord*)(cast(size_t)&this + 16); }
		private ubyte __qwInfo[8];
		public @property final auto ref QWord qwId() { return *cast(QWord*)(cast(size_t)&this + 8); }
		private ubyte __qwId[8];
		public @property final auto ref int nFunction() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __nFunction[4];
		public @property final bool bSuccess() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bSuccess[4];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) MarshalEventDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 1808); }
	public @property final auto ref UObject.Pointer pEventMarshal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1824); }
	public @property final auto ref UObject.Pointer pOutgoingMarshal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1820); }
	final void OnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34270], params.ptr, cast(void*)0);
	}
	final bool SetFunction(int nFunction)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nFunction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34282], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetFieldInt(int nToken, int IntValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(int*)&params[4] = IntValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34285], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SetFieldFloat(int nToken, float FloatValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(float*)&params[4] = FloatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34289], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SetFieldString(int nToken, ScriptString StrValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(ScriptString*)&params[4] = StrValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34293], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ClearMarshal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34297], cast(void*)0, cast(void*)0);
	}
	final void SendMarshal(OnlineSubsystem.UniqueNetId qwPlayerId, bool bLowPriority)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = qwPlayerId;
		*cast(bool*)&params[8] = bLowPriority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34298], params.ptr, cast(void*)0);
	}
	final void SendMarshalAll(bool bLowPriority)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLowPriority;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34301], params.ptr, cast(void*)0);
	}
	final bool GetFieldInt(int nToken, int* IntValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(int*)&params[4] = *IntValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34303], params.ptr, cast(void*)0);
		*IntValue = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool GetFieldFloat(int nToken, float* FloatValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(float*)&params[4] = *FloatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34307], params.ptr, cast(void*)0);
		*FloatValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool GetFieldString(int nToken, ScriptString* StrValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(ScriptString*)&params[4] = *StrValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34311], params.ptr, cast(void*)0);
		*StrValue = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void AddMarshalEventDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MarshalEventDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34316], params.ptr, cast(void*)0);
	}
	final void ClearMarshalEventDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* MarshalEventDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34318], params.ptr, cast(void*)0);
	}
	final void SendCtrlRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34320], params.ptr, cast(void*)0);
	}
	final void SendGameRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34322], params.ptr, cast(void*)0);
	}
	final bool HandlePlayerCommandInput(ScriptString FSCommand, PlayerController PC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FSCommand;
		*cast(PlayerController*)&params[12] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34324], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
