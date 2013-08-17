module UnrealScript.Engine.DownloadableContentEnumerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentEnumerator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DownloadableContentEnumerator")()); }
	private static __gshared DownloadableContentEnumerator mDefaultProperties;
	@property final static DownloadableContentEnumerator DefaultProperties() { mixin(MGDPC!(DownloadableContentEnumerator, "DownloadableContentEnumerator Engine.Default__DownloadableContentEnumerator")()); }
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
			ScriptFunction OnFindDLCComplete() { mixin(MGF!("mOnFindDLCComplete", "Function Engine.DownloadableContentEnumerator.OnFindDLCComplete")()); }
			ScriptFunction FindDLC() { mixin(MGF!("mFindDLC", "Function Engine.DownloadableContentEnumerator.FindDLC")()); }
			ScriptFunction AddFindDLCDelegate() { mixin(MGF!("mAddFindDLCDelegate", "Function Engine.DownloadableContentEnumerator.AddFindDLCDelegate")()); }
			ScriptFunction ClearFindDLCDelegate() { mixin(MGF!("mClearFindDLCDelegate", "Function Engine.DownloadableContentEnumerator.ClearFindDLCDelegate")()); }
			ScriptFunction DeleteDLC() { mixin(MGF!("mDeleteDLC", "Function Engine.DownloadableContentEnumerator.DeleteDLC")()); }
			ScriptFunction InstallAllDLC() { mixin(MGF!("mInstallAllDLC", "Function Engine.DownloadableContentEnumerator.InstallAllDLC")()); }
			ScriptFunction InstallDLC() { mixin(MGF!("mInstallDLC", "Function Engine.DownloadableContentEnumerator.InstallDLC")()); }
			ScriptFunction TriggerFindDLCDelegates() { mixin(MGF!("mTriggerFindDLCDelegates", "Function Engine.DownloadableContentEnumerator.TriggerFindDLCDelegates")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineContent) DLCBundles() { mixin(MGPC!("ScriptArray!(OnlineSubsystem.OnlineContent)", 60)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) FindDLCDelegates() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 84)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFindDLCComplete__Delegate'!
		ScriptString DLCRootDir() { mixin(MGPC!("ScriptString", 72)()); }
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
