module UnrealScript.PlatformCommon.TgGameEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TgGameEngine : GameEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class PlatformCommon.TgGameEngine")()); }
	private static __gshared TgGameEngine mDefaultProperties;
	@property final static TgGameEngine DefaultProperties() { mixin(MGDPC!(TgGameEngine, "TgGameEngine PlatformCommon.Default__TgGameEngine")()); }
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
			ScriptFunction OnMarshalEvent() { mixin(MGF!("mOnMarshalEvent", "Function PlatformCommon.TgGameEngine.OnMarshalEvent")()); }
			ScriptFunction SetFunction() { mixin(MGF!("mSetFunction", "Function PlatformCommon.TgGameEngine.SetFunction")()); }
			ScriptFunction SetFieldInt() { mixin(MGF!("mSetFieldInt", "Function PlatformCommon.TgGameEngine.SetFieldInt")()); }
			ScriptFunction SetFieldFloat() { mixin(MGF!("mSetFieldFloat", "Function PlatformCommon.TgGameEngine.SetFieldFloat")()); }
			ScriptFunction SetFieldString() { mixin(MGF!("mSetFieldString", "Function PlatformCommon.TgGameEngine.SetFieldString")()); }
			ScriptFunction ClearMarshal() { mixin(MGF!("mClearMarshal", "Function PlatformCommon.TgGameEngine.ClearMarshal")()); }
			ScriptFunction SendMarshal() { mixin(MGF!("mSendMarshal", "Function PlatformCommon.TgGameEngine.SendMarshal")()); }
			ScriptFunction SendMarshalAll() { mixin(MGF!("mSendMarshalAll", "Function PlatformCommon.TgGameEngine.SendMarshalAll")()); }
			ScriptFunction GetFieldInt() { mixin(MGF!("mGetFieldInt", "Function PlatformCommon.TgGameEngine.GetFieldInt")()); }
			ScriptFunction GetFieldFloat() { mixin(MGF!("mGetFieldFloat", "Function PlatformCommon.TgGameEngine.GetFieldFloat")()); }
			ScriptFunction GetFieldString() { mixin(MGF!("mGetFieldString", "Function PlatformCommon.TgGameEngine.GetFieldString")()); }
			ScriptFunction AddMarshalEventDelegate() { mixin(MGF!("mAddMarshalEventDelegate", "Function PlatformCommon.TgGameEngine.AddMarshalEventDelegate")()); }
			ScriptFunction ClearMarshalEventDelegate() { mixin(MGF!("mClearMarshalEventDelegate", "Function PlatformCommon.TgGameEngine.ClearMarshalEventDelegate")()); }
			ScriptFunction SendCtrlRequest() { mixin(MGF!("mSendCtrlRequest", "Function PlatformCommon.TgGameEngine.SendCtrlRequest")()); }
			ScriptFunction SendGameRequest() { mixin(MGF!("mSendGameRequest", "Function PlatformCommon.TgGameEngine.SendGameRequest")()); }
			ScriptFunction HandlePlayerCommandInput() { mixin(MGF!("mHandlePlayerCommandInput", "Function PlatformCommon.TgGameEngine.HandlePlayerCommandInput")()); }
		}
	}
	struct MAR_EVENT
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct PlatformCommon.TgGameEngine.MAR_EVENT")()); }
		@property final
		{
			auto ref
			{
				UObject.Pointer pMarshal() { mixin(MGPS!(UObject.Pointer, 40)()); }
				ScriptString fsMessage() { mixin(MGPS!(ScriptString, 28)()); }
				int nStmMsgId() { mixin(MGPS!(int, 24)()); }
				QWord qwInfo() { mixin(MGPS!(QWord, 16)()); }
				QWord qwId() { mixin(MGPS!(QWord, 8)()); }
				int nFunction() { mixin(MGPS!(int, 4)()); }
			}
			bool bSuccess() { mixin(MGBPS!(0, 0x1)()); }
			bool bSuccess(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) MarshalEventDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 1808)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnMarshalEvent__Delegate'!
		UObject.Pointer pEventMarshal() { mixin(MGPC!(UObject.Pointer, 1824)()); }
		UObject.Pointer pOutgoingMarshal() { mixin(MGPC!(UObject.Pointer, 1820)()); }
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
	bool GetFieldInt(int nToken, ref int IntValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(int*)&params[4] = IntValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldInt, params.ptr, cast(void*)0);
		*IntValue = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetFieldFloat(int nToken, ref float FloatValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(float*)&params[4] = FloatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldFloat, params.ptr, cast(void*)0);
		*FloatValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetFieldString(int nToken, ref ScriptString StrValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = nToken;
		*cast(ScriptString*)&params[4] = StrValue;
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
