module UnrealScript.Engine.UIInteraction;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIInteraction")()); }
	private static __gshared UIInteraction mDefaultProperties;
	@property final static UIInteraction DefaultProperties() { mixin(MGDPC!(UIInteraction, "UIInteraction Engine.Default__UIInteraction")()); }
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
			ScriptFunction GetDataStoreClient() { mixin(MGF!("mGetDataStoreClient", "Function Engine.UIInteraction.GetDataStoreClient")()); }
			ScriptFunction IsLoggedIn() { mixin(MGF!("mIsLoggedIn", "Function Engine.UIInteraction.IsLoggedIn")()); }
			ScriptFunction IsGamepadConnected() { mixin(MGF!("mIsGamepadConnected", "Function Engine.UIInteraction.IsGamepadConnected")()); }
			ScriptFunction GetPlayerCount() { mixin(MGF!("mGetPlayerCount", "Function Engine.UIInteraction.GetPlayerCount")()); }
			ScriptFunction GetPlayerIndex() { mixin(MGF!("mGetPlayerIndex", "Function Engine.UIInteraction.GetPlayerIndex")()); }
			ScriptFunction GetPlayerControllerId() { mixin(MGF!("mGetPlayerControllerId", "Function Engine.UIInteraction.GetPlayerControllerId")()); }
			ScriptFunction GetLocalPlayer() { mixin(MGF!("mGetLocalPlayer", "Function Engine.UIInteraction.GetLocalPlayer")()); }
			ScriptFunction NotifyPlayerAdded() { mixin(MGF!("mNotifyPlayerAdded", "Function Engine.UIInteraction.NotifyPlayerAdded")()); }
			ScriptFunction NotifyPlayerRemoved() { mixin(MGF!("mNotifyPlayerRemoved", "Function Engine.UIInteraction.NotifyPlayerRemoved")()); }
			ScriptFunction GetLoginStatus() { mixin(MGF!("mGetLoginStatus", "Function Engine.UIInteraction.GetLoginStatus")()); }
			ScriptFunction GetLowestLoginStatusOfControllers() { mixin(MGF!("mGetLowestLoginStatusOfControllers", "Function Engine.UIInteraction.GetLowestLoginStatusOfControllers")()); }
			ScriptFunction HasLinkConnection() { mixin(MGF!("mHasLinkConnection", "Function Engine.UIInteraction.HasLinkConnection")()); }
			ScriptFunction GetLoggedInPlayerCount() { mixin(MGF!("mGetLoggedInPlayerCount", "Function Engine.UIInteraction.GetLoggedInPlayerCount")()); }
			ScriptFunction GetNumGuestsLoggedIn() { mixin(MGF!("mGetNumGuestsLoggedIn", "Function Engine.UIInteraction.GetNumGuestsLoggedIn")()); }
			ScriptFunction GetConnectedGamepadCount() { mixin(MGF!("mGetConnectedGamepadCount", "Function Engine.UIInteraction.GetConnectedGamepadCount")()); }
			ScriptFunction GetNATType() { mixin(MGF!("mGetNATType", "Function Engine.UIInteraction.GetNATType")()); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF!("mNotifyGameSessionEnded", "Function Engine.UIInteraction.NotifyGameSessionEnded")()); }
		}
	}
	struct UIAxisEmulationData
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIInteraction.UIAxisEmulationData")()); }
		@property final auto ref
		{
			UObject.Double NextRepeatTime() { mixin(MGPS!(UObject.Double, 8)()); }
			ScriptName CurrentRepeatKey() { mixin(MGPS!(ScriptName, 0)()); }
		}
		@property final
		{
			bool bEnabled() { mixin(MGBPS!(16, 0x1)()); }
			bool bEnabled(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	struct UIKeyRepeatData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIInteraction.UIKeyRepeatData")()); }
		@property final auto ref
		{
			UObject.Double NextRepeatTime() { mixin(MGPS!(UObject.Double, 8)()); }
			ScriptName CurrentRepeatKey() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			GameUISceneClient SceneClient() { mixin(MGPC!(GameUISceneClient, 132)()); }
			ScriptArray!(ScriptName) SupportedDoubleClickKeys() { mixin(MGPC!(ScriptArray!(ScriptName), 136)()); }
			ScriptArray!(UIRoot.UIAxisEmulationDefinition) ConfiguredAxisEmulationDefinitions() { mixin(MGPC!(ScriptArray!(UIRoot.UIAxisEmulationDefinition), 196)()); }
			UIInteraction.UIAxisEmulationData AxisInputEmulation() { mixin(MGPC!(UIInteraction.UIAxisEmulationData, 268)()); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'AxisEmulationDefinitions'!
			UIInteraction.UIKeyRepeatData MouseButtonRepeatInfo() { mixin(MGPC!(UIInteraction.UIKeyRepeatData, 180)()); }
			int DoubleClickPixelTolerance() { mixin(MGPC!(int, 176)()); }
			float DoubleClickTriggerSeconds() { mixin(MGPC!(float, 172)()); }
			float MouseButtonRepeatDelay() { mixin(MGPC!(float, 168)()); }
			float AxisRepeatDelay() { mixin(MGPC!(float, 164)()); }
			float UIAxisMultiplier() { mixin(MGPC!(float, 160)()); }
			float UIJoystickDeadZone() { mixin(MGPC!(float, 156)()); }
			DataStoreClient DataStoreManager() { mixin(MGPC!(DataStoreClient, 148)()); }
			ScriptClass SceneClientClass() { mixin(MGPC!(ScriptClass, 128)()); }
			ScriptClass UIManagerClass() { mixin(MGPC!(ScriptClass, 124)()); }
			// WARNING: Property 'UIManager' has the same name as a defined type!
			UObject.Pointer VfTable_FCallbackEventDevice() { mixin(MGPC!(UObject.Pointer, 116)()); }
			UObject.Pointer VfTable_FGlobalDataStoreClientManager() { mixin(MGPC!(UObject.Pointer, 112)()); }
			UObject.Pointer VfTable_FExec() { mixin(MGPC!(UObject.Pointer, 108)()); }
		}
		bool bProcessInput() { mixin(MGBPC!(152, 0x1)()); }
		bool bProcessInput(bool val) { mixin(MSBPC!(152, 0x1)()); }
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
