module UnrealScript.Engine.OnlineSystemInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineSystemInterface : UInterface
{
	final bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22920], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnLinkStatusChange(bool bIsConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22922], params.ptr, cast(void*)0);
	}
	final void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22925], cast(void*)0, cast(void*)0);
	}
	final void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22927], params.ptr, cast(void*)0);
	}
	final void OnControllerChange(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22929], params.ptr, cast(void*)0);
	}
	final void OnExternalUIChange(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22931], params.ptr, cast(void*)0);
	}
	final void AddLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22933], params.ptr, cast(void*)0);
	}
	final void ClearLinkStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* LinkStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = LinkStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22935], params.ptr, cast(void*)0);
	}
	final void AddExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22938], params.ptr, cast(void*)0);
	}
	final void ClearExternalUIChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ExternalUIDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ExternalUIDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22940], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.ENetworkNotificationPosition GetNetworkNotificationPosition()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22942], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr;
	}
	final void SetNetworkNotificationPosition(OnlineSubsystem.ENetworkNotificationPosition NewPos)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.ENetworkNotificationPosition*)params.ptr = NewPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22944], params.ptr, cast(void*)0);
	}
	final void AddControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22948], params.ptr, cast(void*)0);
	}
	final void ClearControllerChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ControllerChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ControllerChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22950], params.ptr, cast(void*)0);
	}
	final bool IsControllerConnected(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22952], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22956], params.ptr, cast(void*)0);
	}
	final void ClearConnectionStatusChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ConnectionStatusDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ConnectionStatusDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22958], params.ptr, cast(void*)0);
	}
	final OnlineSubsystem.ENATType GetNATType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22960], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.ENATType*)params.ptr;
	}
	final void AddStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22962], params.ptr, cast(void*)0);
	}
	final void ClearStorageDeviceChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* StorageDeviceChangeDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = StorageDeviceChangeDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22964], params.ptr, cast(void*)0);
	}
}
