module UnrealScript.Engine.UIInteraction;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameUISceneClient;
import UnrealScript.Engine.UIManager;
import UnrealScript.Engine.Interaction;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.DataStoreClient;

extern(C++) interface UIInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIInteraction")); }
	private static __gshared UIInteraction mDefaultProperties;
	@property final static UIInteraction DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIInteraction)("UIInteraction Engine.Default__UIInteraction")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDataStoreClient;
			ScriptFunction mIsLoggedIn;
			ScriptFunction mIsGamepadConnected;
			ScriptFunction mGetPlayerCount;
			ScriptFunction mGetPlayerIndex;
			ScriptFunction mGetPlayerControllerId;
			ScriptFunction mGetLocalPlayer;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mNotifyPlayerRemoved;
			ScriptFunction mGetLoginStatus;
			ScriptFunction mGetLowestLoginStatusOfControllers;
			ScriptFunction mHasLinkConnection;
			ScriptFunction mGetLoggedInPlayerCount;
			ScriptFunction mGetNumGuestsLoggedIn;
			ScriptFunction mGetConnectedGamepadCount;
			ScriptFunction mGetNATType;
			ScriptFunction mNotifyGameSessionEnded;
		}
		public @property static final
		{
			ScriptFunction GetDataStoreClient() { return mGetDataStoreClient ? mGetDataStoreClient : (mGetDataStoreClient = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetDataStoreClient")); }
			ScriptFunction IsLoggedIn() { return mIsLoggedIn ? mIsLoggedIn : (mIsLoggedIn = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.IsLoggedIn")); }
			ScriptFunction IsGamepadConnected() { return mIsGamepadConnected ? mIsGamepadConnected : (mIsGamepadConnected = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.IsGamepadConnected")); }
			ScriptFunction GetPlayerCount() { return mGetPlayerCount ? mGetPlayerCount : (mGetPlayerCount = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetPlayerCount")); }
			ScriptFunction GetPlayerIndex() { return mGetPlayerIndex ? mGetPlayerIndex : (mGetPlayerIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetPlayerIndex")); }
			ScriptFunction GetPlayerControllerId() { return mGetPlayerControllerId ? mGetPlayerControllerId : (mGetPlayerControllerId = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetPlayerControllerId")); }
			ScriptFunction GetLocalPlayer() { return mGetLocalPlayer ? mGetLocalPlayer : (mGetLocalPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetLocalPlayer")); }
			ScriptFunction NotifyPlayerAdded() { return mNotifyPlayerAdded ? mNotifyPlayerAdded : (mNotifyPlayerAdded = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.NotifyPlayerAdded")); }
			ScriptFunction NotifyPlayerRemoved() { return mNotifyPlayerRemoved ? mNotifyPlayerRemoved : (mNotifyPlayerRemoved = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.NotifyPlayerRemoved")); }
			ScriptFunction GetLoginStatus() { return mGetLoginStatus ? mGetLoginStatus : (mGetLoginStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetLoginStatus")); }
			ScriptFunction GetLowestLoginStatusOfControllers() { return mGetLowestLoginStatusOfControllers ? mGetLowestLoginStatusOfControllers : (mGetLowestLoginStatusOfControllers = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetLowestLoginStatusOfControllers")); }
			ScriptFunction HasLinkConnection() { return mHasLinkConnection ? mHasLinkConnection : (mHasLinkConnection = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.HasLinkConnection")); }
			ScriptFunction GetLoggedInPlayerCount() { return mGetLoggedInPlayerCount ? mGetLoggedInPlayerCount : (mGetLoggedInPlayerCount = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetLoggedInPlayerCount")); }
			ScriptFunction GetNumGuestsLoggedIn() { return mGetNumGuestsLoggedIn ? mGetNumGuestsLoggedIn : (mGetNumGuestsLoggedIn = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetNumGuestsLoggedIn")); }
			ScriptFunction GetConnectedGamepadCount() { return mGetConnectedGamepadCount ? mGetConnectedGamepadCount : (mGetConnectedGamepadCount = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetConnectedGamepadCount")); }
			ScriptFunction GetNATType() { return mGetNATType ? mGetNATType : (mGetNATType = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.GetNATType")); }
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.UIInteraction.NotifyGameSessionEnded")); }
		}
	}
	struct UIAxisEmulationData
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIInteraction.UIAxisEmulationData")); }
		@property final auto ref
		{
			UObject.Double NextRepeatTime() { return *cast(UObject.Double*)(cast(size_t)&this + 8); }
			ScriptName CurrentRepeatKey() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct UIKeyRepeatData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIInteraction.UIKeyRepeatData")); }
		@property final auto ref
		{
			UObject.Double NextRepeatTime() { return *cast(UObject.Double*)(cast(size_t)&this + 8); }
			ScriptName CurrentRepeatKey() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			GameUISceneClient SceneClient() { return *cast(GameUISceneClient*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(ScriptName) SupportedDoubleClickKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 136); }
			ScriptArray!(UIRoot.UIAxisEmulationDefinition) ConfiguredAxisEmulationDefinitions() { return *cast(ScriptArray!(UIRoot.UIAxisEmulationDefinition)*)(cast(size_t)cast(void*)this + 196); }
			UIInteraction.UIAxisEmulationData AxisInputEmulation() { return *cast(UIInteraction.UIAxisEmulationData*)(cast(size_t)cast(void*)this + 268); }
			UIInteraction.UIKeyRepeatData MouseButtonRepeatInfo() { return *cast(UIInteraction.UIKeyRepeatData*)(cast(size_t)cast(void*)this + 180); }
			int DoubleClickPixelTolerance() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
			float DoubleClickTriggerSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float MouseButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float AxisRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float UIAxisMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float UIJoystickDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			DataStoreClient DataStoreManager() { return *cast(DataStoreClient*)(cast(size_t)cast(void*)this + 148); }
			ScriptClass SceneClientClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 128); }
			ScriptClass UIManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 124); }
			// WARNING: Property 'UIManager' has the same name as a defined type!
			UObject.Pointer VfTable_FCallbackEventDevice() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 116); }
			UObject.Pointer VfTable_FGlobalDataStoreClientManager() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
			UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bProcessInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bProcessInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
final:
	static DataStoreClient GetDataStoreClient()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetDataStoreClient, params.ptr, cast(void*)0);
		return *cast(DataStoreClient*)params.ptr;
	}
	static bool IsLoggedIn(int ControllerId, bool bRequireOnlineLogin)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bRequireOnlineLogin;
		StaticClass.ProcessEvent(Functions.IsLoggedIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool IsGamepadConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		StaticClass.ProcessEvent(Functions.IsGamepadConnected, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static int GetPlayerCount()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetPlayerCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	static int GetPlayerIndex(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		StaticClass.ProcessEvent(Functions.GetPlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int GetPlayerControllerId(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		StaticClass.ProcessEvent(Functions.GetPlayerControllerId, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static LocalPlayer GetLocalPlayer(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		StaticClass.ProcessEvent(Functions.GetLocalPlayer, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerAdded, params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerRemoved, params.ptr, cast(void*)0);
	}
	static OnlineSubsystem.ELoginStatus GetLoginStatus(int ControllerId)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		StaticClass.ProcessEvent(Functions.GetLoginStatus, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[4];
	}
	OnlineSubsystem.ELoginStatus GetLowestLoginStatusOfControllers()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLowestLoginStatusOfControllers, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)params.ptr;
	}
	static bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.HasLinkConnection, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static int GetLoggedInPlayerCount(bool bRequireOnlineLogin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRequireOnlineLogin;
		StaticClass.ProcessEvent(Functions.GetLoggedInPlayerCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int GetNumGuestsLoggedIn()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetNumGuestsLoggedIn, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	static int GetConnectedGamepadCount(ScriptArray!(bool) ControllerConnectionStatusOverrides)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(bool)*)params.ptr = ControllerConnectionStatusOverrides;
		StaticClass.ProcessEvent(Functions.GetConnectedGamepadCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetNATType, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
	}
}
