module UnrealScript.PlatformCommon.TgGameEngine;

import ScriptClasses;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TgGameEngine : GameEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgGameEngine")); }
	private static __gshared TgGameEngine mDefaultProperties;
	@property final static TgGameEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TgGameEngine)("TgGameEngine PlatformCommon.Default__TgGameEngine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnMarshalEvent;
			ScriptFunction mSetFunction;
			ScriptFunction mSetFieldInt;
			ScriptFunction mSetFieldFloat;
			ScriptFunction mSetFieldString;
			ScriptFunction mClearMarshal;
			ScriptFunction mSendMarshal;
			ScriptFunction mSendMarshalAll;
			ScriptFunction mGetFieldInt;
			ScriptFunction mGetFieldFloat;
			ScriptFunction mGetFieldString;
			ScriptFunction mAddMarshalEventDelegate;
			ScriptFunction mClearMarshalEventDelegate;
			ScriptFunction mSendCtrlRequest;
			ScriptFunction mSendGameRequest;
			ScriptFunction mHandlePlayerCommandInput;
		}
		public @property static final
		{
			ScriptFunction OnMarshalEvent() { return mOnMarshalEvent ? mOnMarshalEvent : (mOnMarshalEvent = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.OnMarshalEvent")); }
			ScriptFunction SetFunction() { return mSetFunction ? mSetFunction : (mSetFunction = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SetFunction")); }
			ScriptFunction SetFieldInt() { return mSetFieldInt ? mSetFieldInt : (mSetFieldInt = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SetFieldInt")); }
			ScriptFunction SetFieldFloat() { return mSetFieldFloat ? mSetFieldFloat : (mSetFieldFloat = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SetFieldFloat")); }
			ScriptFunction SetFieldString() { return mSetFieldString ? mSetFieldString : (mSetFieldString = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SetFieldString")); }
			ScriptFunction ClearMarshal() { return mClearMarshal ? mClearMarshal : (mClearMarshal = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.ClearMarshal")); }
			ScriptFunction SendMarshal() { return mSendMarshal ? mSendMarshal : (mSendMarshal = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SendMarshal")); }
			ScriptFunction SendMarshalAll() { return mSendMarshalAll ? mSendMarshalAll : (mSendMarshalAll = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SendMarshalAll")); }
			ScriptFunction GetFieldInt() { return mGetFieldInt ? mGetFieldInt : (mGetFieldInt = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.GetFieldInt")); }
			ScriptFunction GetFieldFloat() { return mGetFieldFloat ? mGetFieldFloat : (mGetFieldFloat = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.GetFieldFloat")); }
			ScriptFunction GetFieldString() { return mGetFieldString ? mGetFieldString : (mGetFieldString = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.GetFieldString")); }
			ScriptFunction AddMarshalEventDelegate() { return mAddMarshalEventDelegate ? mAddMarshalEventDelegate : (mAddMarshalEventDelegate = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.AddMarshalEventDelegate")); }
			ScriptFunction ClearMarshalEventDelegate() { return mClearMarshalEventDelegate ? mClearMarshalEventDelegate : (mClearMarshalEventDelegate = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.ClearMarshalEventDelegate")); }
			ScriptFunction SendCtrlRequest() { return mSendCtrlRequest ? mSendCtrlRequest : (mSendCtrlRequest = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SendCtrlRequest")); }
			ScriptFunction SendGameRequest() { return mSendGameRequest ? mSendGameRequest : (mSendGameRequest = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.SendGameRequest")); }
			ScriptFunction HandlePlayerCommandInput() { return mHandlePlayerCommandInput ? mHandlePlayerCommandInput : (mHandlePlayerCommandInput = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgGameEngine.HandlePlayerCommandInput")); }
		}
	}
	struct MAR_EVENT
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct PlatformCommon.TgGameEngine.MAR_EVENT")); }
		@property final
		{
			auto ref
			{
				UObject.Pointer pMarshal() { return *cast(UObject.Pointer*)(cast(size_t)&this + 40); }
				ScriptString fsMessage() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
				int nStmMsgId() { return *cast(int*)(cast(size_t)&this + 24); }
				QWord qwInfo() { return *cast(QWord*)(cast(size_t)&this + 16); }
				QWord qwId() { return *cast(QWord*)(cast(size_t)&this + 8); }
				int nFunction() { return *cast(int*)(cast(size_t)&this + 4); }
			}
			bool bSuccess() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) MarshalEventDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 1808); }
		UObject.Pointer pEventMarshal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1824); }
		UObject.Pointer pOutgoingMarshal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1820); }
	}
final:
	void OnMarshalEvent(UObject.Pointer pMarEvent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject.Pointer*)params.ptr = pMarEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMarshalEvent, params.ptr, cast(void*)0);
	}
	bool SetFunction(int nFunction)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nFunction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFunction, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetFieldInt(int nToken, int IntValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(int*)&params[4] = IntValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFieldInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetFieldFloat(int nToken, float FloatValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(float*)&params[4] = FloatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFieldFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SetFieldString(int nToken, ScriptString StrValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(ScriptString*)&params[4] = StrValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFieldString, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ClearMarshal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMarshal, cast(void*)0, cast(void*)0);
	}
	void SendMarshal(OnlineSubsystem.UniqueNetId qwPlayerId, bool bLowPriority)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = qwPlayerId;
		*cast(bool*)&params[8] = bLowPriority;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMarshal, params.ptr, cast(void*)0);
	}
	void SendMarshalAll(bool bLowPriority)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLowPriority;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMarshalAll, params.ptr, cast(void*)0);
	}
	bool GetFieldInt(int nToken, int* IntValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(int*)&params[4] = *IntValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldInt, params.ptr, cast(void*)0);
		*IntValue = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetFieldFloat(int nToken, float* FloatValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(float*)&params[4] = *FloatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldFloat, params.ptr, cast(void*)0);
		*FloatValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetFieldString(int nToken, ScriptString* StrValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(ScriptString*)&params[4] = *StrValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldString, params.ptr, cast(void*)0);
		*StrValue = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	void AddMarshalEventDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MarshalEventDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMarshalEventDelegate, params.ptr, cast(void*)0);
	}
	void ClearMarshalEventDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MarshalEventDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MarshalEventDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMarshalEventDelegate, params.ptr, cast(void*)0);
	}
	void SendCtrlRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendCtrlRequest, params.ptr, cast(void*)0);
	}
	void SendGameRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameRequest, params.ptr, cast(void*)0);
	}
	bool HandlePlayerCommandInput(ScriptString FSCommand, PlayerController PC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FSCommand;
		*cast(PlayerController*)&params[12] = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePlayerCommandInput, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
