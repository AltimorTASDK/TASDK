module UnrealScript.Engine.OnlineSystemInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineSystemInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlineSystemInterface")); }
	private static __gshared OnlineSystemInterface mDefaultProperties;
	@property final static OnlineSystemInterface DefaultProperties() { mixin(MGDPC("OnlineSystemInterface", "OnlineSystemInterface Engine.Default__OnlineSystemInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasLinkConnection;
			ScriptFunction mOnLinkStatusChange;
			ScriptFunction mOnStorageDeviceChange;
			ScriptFunction mOnConnectionStatusChange;
			ScriptFunction mOnControllerChange;
			ScriptFunction mOnExternalUIChange;
			ScriptFunction mAddLinkStatusChangeDelegate;
			ScriptFunction mClearLinkStatusChangeDelegate;
			ScriptFunction mAddExternalUIChangeDelegate;
			ScriptFunction mClearExternalUIChangeDelegate;
			ScriptFunction mGetNetworkNotificationPosition;
			ScriptFunction mSetNetworkNotificationPosition;
			ScriptFunction mAddControllerChangeDelegate;
			ScriptFunction mClearControllerChangeDelegate;
			ScriptFunction mIsControllerConnected;
			ScriptFunction mAddConnectionStatusChangeDelegate;
			ScriptFunction mClearConnectionStatusChangeDelegate;
			ScriptFunction mGetNATType;
			ScriptFunction mAddStorageDeviceChangeDelegate;
			ScriptFunction mClearStorageDeviceChangeDelegate;
		}
		public @property static final
		{
			ScriptFunction HasLinkConnection() { mixin(MGF("mHasLinkConnection", "Function Engine.OnlineSystemInterface.HasLinkConnection")); }
			ScriptFunction OnLinkStatusChange() { mixin(MGF("mOnLinkStatusChange", "Function Engine.OnlineSystemInterface.OnLinkStatusChange")); }
			ScriptFunction OnStorageDeviceChange() { mixin(MGF("mOnStorageDeviceChange", "Function Engine.OnlineSystemInterface.OnStorageDeviceChange")); }
			ScriptFunction OnConnectionStatusChange() { mixin(MGF("mOnConnectionStatusChange", "Function Engine.OnlineSystemInterface.OnConnectionStatusChange")); }
			ScriptFunction OnControllerChange() { mixin(MGF("mOnControllerChange", "Function Engine.OnlineSystemInterface.OnControllerChange")); }
			ScriptFunction OnExternalUIChange() { mixin(MGF("mOnExternalUIChange", "Function Engine.OnlineSystemInterface.OnExternalUIChange")); }
			ScriptFunction AddLinkStatusChangeDelegate() { mixin(MGF("mAddLinkStatusChangeDelegate", "Function Engine.OnlineSystemInterface.AddLinkStatusChangeDelegate")); }
			ScriptFunction ClearLinkStatusChangeDelegate() { mixin(MGF("mClearLinkStatusChangeDelegate", "Function Engine.OnlineSystemInterface.ClearLinkStatusChangeDelegate")); }
			ScriptFunction AddExternalUIChangeDelegate() { mixin(MGF("mAddExternalUIChangeDelegate", "Function Engine.OnlineSystemInterface.AddExternalUIChangeDelegate")); }
			ScriptFunction ClearExternalUIChangeDelegate() { mixin(MGF("mClearExternalUIChangeDelegate", "Function Engine.OnlineSystemInterface.ClearExternalUIChangeDelegate")); }
			ScriptFunction GetNetworkNotificationPosition() { mixin(MGF("mGetNetworkNotificationPosition", "Function Engine.OnlineSystemInterface.GetNetworkNotificationPosition")); }
			ScriptFunction SetNetworkNotificationPosition() { mixin(MGF("mSetNetworkNotificationPosition", "Function Engine.OnlineSystemInterface.SetNetworkNotificationPosition")); }
			ScriptFunction AddControllerChangeDelegate() { mixin(MGF("mAddControllerChangeDelegate", "Function Engine.OnlineSystemInterface.AddControllerChangeDelegate")); }
			ScriptFunction ClearControllerChangeDelegate() { mixin(MGF("mClearControllerChangeDelegate", "Function Engine.OnlineSystemInterface.ClearControllerChangeDelegate")); }
			ScriptFunction IsControllerConnected() { mixin(MGF("mIsControllerConnected", "Function Engine.OnlineSystemInterface.IsControllerConnected")); }
			ScriptFunction AddConnectionStatusChangeDelegate() { mixin(MGF("mAddConnectionStatusChangeDelegate", "Function Engine.OnlineSystemInterface.AddConnectionStatusChangeDelegate")); }
			ScriptFunction ClearConnectionStatusChangeDelegate() { mixin(MGF("mClearConnectionStatusChangeDelegate", "Function Engine.OnlineSystemInterface.ClearConnectionStatusChangeDelegate")); }
			ScriptFunction GetNATType() { mixin(MGF("mGetNATType", "Function Engine.OnlineSystemInterface.GetNATType")); }
			ScriptFunction AddStorageDeviceChangeDelegate() { mixin(MGF("mAddStorageDeviceChangeDelegate", "Function Engine.OnlineSystemInterface.AddStorageDeviceChangeDelegate")); }
			ScriptFunction ClearStorageDeviceChangeDelegate() { mixin(MGF("mClearStorageDeviceChangeDelegate", "Function Engine.OnlineSystemInterface.ClearStorageDeviceChangeDelegate")); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnStorageDeviceChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnConnectionStatusChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnControllerChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnExternalUIChange__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnLinkStatusChange__Delegate'!
	}
final:
	bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasLinkConnection, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnLinkStatusChange(bool bIsConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLinkStatusChange, params.ptr, cast(void*)0);
	}
	void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStorageDeviceChange, cast(void*)0, cast(void*)0);
	}
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionStatusChange, params.ptr, cast(void*)0);
	}
	void OnControllerChange(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChange, params.ptr, cast(void*)0);
	}
	void OnExternalUIChange(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExternalUIChange, params.ptr, cast(void*)0);
	}
	void AddLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLinkStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLinkStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void AddExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddExternalUIChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearExternalUIChangeDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.ENetworkNotificationPosition GetNetworkNotificationPosition()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNetworkNotificationPosition, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr;
	}
	void SetNetworkNotificationPosition(OnlineSubsystem.ENetworkNotificationPosition NewPos)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr = NewPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNetworkNotificationPosition, params.ptr, cast(void*)0);
	}
	void AddControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddControllerChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearControllerChangeDelegate, params.ptr, cast(void*)0);
	}
	bool IsControllerConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsControllerConnected, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddConnectionStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearConnectionStatusChangeDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNATType, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	void AddStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddStorageDeviceChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStorageDeviceChangeDelegate, params.ptr, cast(void*)0);
	}
}
