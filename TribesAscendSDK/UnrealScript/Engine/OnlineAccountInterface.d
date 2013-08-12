module UnrealScript.Engine.OnlineAccountInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineAccountInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineAccountInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateOnlineAccount;
			ScriptFunction mOnCreateOnlineAccountCompleted;
			ScriptFunction mAddCreateOnlineAccountCompletedDelegate;
			ScriptFunction mClearCreateOnlineAccountCompletedDelegate;
			ScriptFunction mCreateLocalAccount;
			ScriptFunction mRenameLocalAccount;
			ScriptFunction mDeleteLocalAccount;
			ScriptFunction mGetLocalAccountNames;
		}
		public @property static final
		{
			ScriptFunction CreateOnlineAccount() { return mCreateOnlineAccount ? mCreateOnlineAccount : (mCreateOnlineAccount = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.CreateOnlineAccount")); }
			ScriptFunction OnCreateOnlineAccountCompleted() { return mOnCreateOnlineAccountCompleted ? mOnCreateOnlineAccountCompleted : (mOnCreateOnlineAccountCompleted = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.OnCreateOnlineAccountCompleted")); }
			ScriptFunction AddCreateOnlineAccountCompletedDelegate() { return mAddCreateOnlineAccountCompletedDelegate ? mAddCreateOnlineAccountCompletedDelegate : (mAddCreateOnlineAccountCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.AddCreateOnlineAccountCompletedDelegate")); }
			ScriptFunction ClearCreateOnlineAccountCompletedDelegate() { return mClearCreateOnlineAccountCompletedDelegate ? mClearCreateOnlineAccountCompletedDelegate : (mClearCreateOnlineAccountCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.ClearCreateOnlineAccountCompletedDelegate")); }
			ScriptFunction CreateLocalAccount() { return mCreateLocalAccount ? mCreateLocalAccount : (mCreateLocalAccount = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.CreateLocalAccount")); }
			ScriptFunction RenameLocalAccount() { return mRenameLocalAccount ? mRenameLocalAccount : (mRenameLocalAccount = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.RenameLocalAccount")); }
			ScriptFunction DeleteLocalAccount() { return mDeleteLocalAccount ? mDeleteLocalAccount : (mDeleteLocalAccount = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.DeleteLocalAccount")); }
			ScriptFunction GetLocalAccountNames() { return mGetLocalAccountNames ? mGetLocalAccountNames : (mGetLocalAccountNames = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineAccountInterface.GetLocalAccountNames")); }
		}
	}
final:
	bool CreateOnlineAccount(ScriptString UserName, ScriptString Password, ScriptString EmailAddress, ScriptString ProductKey)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		*cast(ScriptString*)&params[24] = EmailAddress;
		*cast(ScriptString*)&params[36] = ProductKey;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOnlineAccount, params.ptr, cast(void*)0);
		return *cast(bool*)&params[48];
	}
	void OnCreateOnlineAccountCompleted(OnlineSubsystem.EOnlineAccountCreateStatus ErrorStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineAccountCreateStatus*)params.ptr = ErrorStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCreateOnlineAccountCompleted, params.ptr, cast(void*)0);
	}
	void AddCreateOnlineAccountCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* AccountCreateDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = AccountCreateDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCreateOnlineAccountCompletedDelegate, params.ptr, cast(void*)0);
	}
	void ClearCreateOnlineAccountCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* AccountCreateDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = AccountCreateDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCreateOnlineAccountCompletedDelegate, params.ptr, cast(void*)0);
	}
	bool CreateLocalAccount(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateLocalAccount, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool RenameLocalAccount(ScriptString NewUserName, ScriptString OldUserName, ScriptString Password)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewUserName;
		*cast(ScriptString*)&params[12] = OldUserName;
		*cast(ScriptString*)&params[24] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenameLocalAccount, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	bool DeleteLocalAccount(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeleteLocalAccount, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool GetLocalAccountNames(ScriptArray!(ScriptString)* Accounts)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *Accounts;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocalAccountNames, params.ptr, cast(void*)0);
		*Accounts = *cast(ScriptArray!(ScriptString)*)params.ptr;
		return *cast(bool*)&params[12];
	}
}
