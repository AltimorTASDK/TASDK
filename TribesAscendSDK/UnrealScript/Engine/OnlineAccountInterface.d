module UnrealScript.Engine.OnlineAccountInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineAccountInterface : UInterface
{
	final bool CreateOnlineAccount(ScriptString UserName, ScriptString Password, ScriptString EmailAddress, ScriptString ProductKey)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		*cast(ScriptString*)&params[24] = EmailAddress;
		*cast(ScriptString*)&params[36] = ProductKey;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21358], params.ptr, cast(void*)0);
		return *cast(bool*)&params[48];
	}
	final void OnCreateOnlineAccountCompleted(OnlineSubsystem.EOnlineAccountCreateStatus ErrorStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineAccountCreateStatus*)params.ptr = ErrorStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21364], params.ptr, cast(void*)0);
	}
	final void AddCreateOnlineAccountCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* AccountCreateDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = AccountCreateDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21367], params.ptr, cast(void*)0);
	}
	final void ClearCreateOnlineAccountCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* AccountCreateDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = AccountCreateDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21369], params.ptr, cast(void*)0);
	}
	final bool CreateLocalAccount(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21371], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool RenameLocalAccount(ScriptString NewUserName, ScriptString OldUserName, ScriptString Password)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewUserName;
		*cast(ScriptString*)&params[12] = OldUserName;
		*cast(ScriptString*)&params[24] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21375], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	final bool DeleteLocalAccount(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21380], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool GetLocalAccountNames(ScriptArray!(ScriptString)* Accounts)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *Accounts;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21384], params.ptr, cast(void*)0);
		*Accounts = *cast(ScriptArray!(ScriptString)*)params.ptr;
		return *cast(bool*)&params[12];
	}
}
