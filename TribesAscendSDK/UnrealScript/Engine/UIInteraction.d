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
	struct UIAxisEmulationData
	{
		private ubyte __buffer__[20];
	public extern(D):
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
	DataStoreClient GetDataStoreClient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7799], params.ptr, cast(void*)0);
		return *cast(DataStoreClient*)params.ptr;
	}
	bool IsLoggedIn(int ControllerId, bool bRequireOnlineLogin)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bRequireOnlineLogin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17951], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsGamepadConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17953], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetPlayerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18103], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetPlayerIndex(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29058], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetPlayerControllerId(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29061], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	LocalPlayer GetLocalPlayer(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29064], params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29069], params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29073], params.ptr, cast(void*)0);
	}
	OnlineSubsystem.ELoginStatus GetLoginStatus(int ControllerId)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29080], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)&params[4];
	}
	OnlineSubsystem.ELoginStatus GetLowestLoginStatusOfControllers()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29086], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ELoginStatus*)params.ptr;
	}
	bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29091], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetLoggedInPlayerCount(bool bRequireOnlineLogin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRequireOnlineLogin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29100], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetNumGuestsLoggedIn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29105], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetConnectedGamepadCount(ScriptArray!(bool) ControllerConnectionStatusOverrides)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(bool)*)params.ptr = ControllerConnectionStatusOverrides;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29114], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29120], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29125], cast(void*)0, cast(void*)0);
	}
}
