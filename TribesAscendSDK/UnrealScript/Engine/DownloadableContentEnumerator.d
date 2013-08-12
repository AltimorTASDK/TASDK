module UnrealScript.Engine.DownloadableContentEnumerator;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentEnumerator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DownloadableContentEnumerator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnFindDLCComplete;
			ScriptFunction mFindDLC;
			ScriptFunction mAddFindDLCDelegate;
			ScriptFunction mClearFindDLCDelegate;
			ScriptFunction mDeleteDLC;
			ScriptFunction mInstallAllDLC;
			ScriptFunction mInstallDLC;
			ScriptFunction mTriggerFindDLCDelegates;
		}
		public @property static final
		{
			ScriptFunction OnFindDLCComplete() { return mOnFindDLCComplete ? mOnFindDLCComplete : (mOnFindDLCComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.OnFindDLCComplete")); }
			ScriptFunction FindDLC() { return mFindDLC ? mFindDLC : (mFindDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.FindDLC")); }
			ScriptFunction AddFindDLCDelegate() { return mAddFindDLCDelegate ? mAddFindDLCDelegate : (mAddFindDLCDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.AddFindDLCDelegate")); }
			ScriptFunction ClearFindDLCDelegate() { return mClearFindDLCDelegate ? mClearFindDLCDelegate : (mClearFindDLCDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.ClearFindDLCDelegate")); }
			ScriptFunction DeleteDLC() { return mDeleteDLC ? mDeleteDLC : (mDeleteDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.DeleteDLC")); }
			ScriptFunction InstallAllDLC() { return mInstallAllDLC ? mInstallAllDLC : (mInstallAllDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.InstallAllDLC")); }
			ScriptFunction InstallDLC() { return mInstallDLC ? mInstallDLC : (mInstallDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.InstallDLC")); }
			ScriptFunction TriggerFindDLCDelegates() { return mTriggerFindDLCDelegates ? mTriggerFindDLCDelegates : (mTriggerFindDLCDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentEnumerator.TriggerFindDLCDelegates")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineContent) DLCBundles() { return *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) FindDLCDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 84); }
		ScriptString DLCRootDir() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	}
final:
	void OnFindDLCComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFindDLCComplete, cast(void*)0, cast(void*)0);
	}
	void FindDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindDLC, cast(void*)0, cast(void*)0);
	}
	void AddFindDLCDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFindDLCDelegate, params.ptr, cast(void*)0);
	}
	void ClearFindDLCDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFindDLCDelegate, params.ptr, cast(void*)0);
	}
	void DeleteDLC(ScriptString DLCName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DLCName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeleteDLC, params.ptr, cast(void*)0);
	}
	void InstallAllDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallAllDLC, cast(void*)0, cast(void*)0);
	}
	void InstallDLC(ScriptString DLCName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DLCName;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallDLC, params.ptr, cast(void*)0);
	}
	void TriggerFindDLCDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerFindDLCDelegates, cast(void*)0, cast(void*)0);
	}
}
