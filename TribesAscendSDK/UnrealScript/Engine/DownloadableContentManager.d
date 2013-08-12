module UnrealScript.Engine.DownloadableContentManager;

import ScriptClasses;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DownloadableContentManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInstallDLC;
			ScriptFunction mInstallDLCs;
			ScriptFunction mClearDLC;
			ScriptFunction mGetDLCTextureCachePath;
			ScriptFunction mAddSectionToObjectList;
			ScriptFunction mMarkPerObjectConfigPendingKill;
			ScriptFunction mUpdateObjectLists;
			ScriptFunction mInstallPackages;
			ScriptFunction mInstallNonPackageFiles;
			ScriptFunction mInit;
			ScriptFunction mOnLoginChange;
			ScriptFunction mOnStorageDeviceChange;
			ScriptFunction mOnContentChange;
			ScriptFunction mRefreshDLC;
			ScriptFunction mRefreshDLCEnumComplete;
			ScriptFunction mAddPackagesToFullyLoad;
		}
		public @property static final
		{
			ScriptFunction InstallDLC() { return mInstallDLC ? mInstallDLC : (mInstallDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.InstallDLC")); }
			ScriptFunction InstallDLCs() { return mInstallDLCs ? mInstallDLCs : (mInstallDLCs = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.InstallDLCs")); }
			ScriptFunction ClearDLC() { return mClearDLC ? mClearDLC : (mClearDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.ClearDLC")); }
			ScriptFunction GetDLCTextureCachePath() { return mGetDLCTextureCachePath ? mGetDLCTextureCachePath : (mGetDLCTextureCachePath = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.GetDLCTextureCachePath")); }
			ScriptFunction AddSectionToObjectList() { return mAddSectionToObjectList ? mAddSectionToObjectList : (mAddSectionToObjectList = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.AddSectionToObjectList")); }
			ScriptFunction MarkPerObjectConfigPendingKill() { return mMarkPerObjectConfigPendingKill ? mMarkPerObjectConfigPendingKill : (mMarkPerObjectConfigPendingKill = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.MarkPerObjectConfigPendingKill")); }
			ScriptFunction UpdateObjectLists() { return mUpdateObjectLists ? mUpdateObjectLists : (mUpdateObjectLists = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.UpdateObjectLists")); }
			ScriptFunction InstallPackages() { return mInstallPackages ? mInstallPackages : (mInstallPackages = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.InstallPackages")); }
			ScriptFunction InstallNonPackageFiles() { return mInstallNonPackageFiles ? mInstallNonPackageFiles : (mInstallNonPackageFiles = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.InstallNonPackageFiles")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.Init")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.OnLoginChange")); }
			ScriptFunction OnStorageDeviceChange() { return mOnStorageDeviceChange ? mOnStorageDeviceChange : (mOnStorageDeviceChange = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.OnStorageDeviceChange")); }
			ScriptFunction OnContentChange() { return mOnContentChange ? mOnContentChange : (mOnContentChange = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.OnContentChange")); }
			ScriptFunction RefreshDLC() { return mRefreshDLC ? mRefreshDLC : (mRefreshDLC = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.RefreshDLC")); }
			ScriptFunction RefreshDLCEnumComplete() { return mRefreshDLCEnumComplete ? mRefreshDLCEnumComplete : (mRefreshDLCEnumComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.RefreshDLCEnumComplete")); }
			ScriptFunction AddPackagesToFullyLoad() { return mAddPackagesToFullyLoad ? mAddPackagesToFullyLoad : (mAddPackagesToFullyLoad = ScriptObject.Find!(ScriptFunction)("Function Engine.DownloadableContentManager.AddPackagesToFullyLoad")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) DLCConfigCacheChanges() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(ScriptString) InstalledDLC() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(ScriptClass) ClassesToReload() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 144); }
		ScriptArray!(UObject) ObjectsToReload() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 156); }
		// WARNING: Property 'GameEngine' has the same name as a defined type!
		UObject.Map_Mirror TextureCachePathMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	bool InstallDLC(OnlineSubsystem.OnlineContent* DLCBundle)
	{
		ubyte params[72];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = *DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallDLC, params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
		return *cast(bool*)&params[68];
	}
	void InstallDLCs(ScriptArray!(OnlineSubsystem.OnlineContent)* DLCBundles)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)params.ptr = *DLCBundles;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallDLCs, params.ptr, cast(void*)0);
		*DLCBundles = *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)params.ptr;
	}
	void ClearDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDLC, cast(void*)0, cast(void*)0);
	}
	bool GetDLCTextureCachePath(ScriptName TextureCacheName, ScriptString* Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TextureCacheName;
		*cast(ScriptString*)&params[8] = *Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDLCTextureCachePath, params.ptr, cast(void*)0);
		*Path = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	void AddSectionToObjectList(ScriptString Section)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Section;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSectionToObjectList, params.ptr, cast(void*)0);
	}
	void MarkPerObjectConfigPendingKill(ScriptString Section)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Section;
		(cast(ScriptObject)this).ProcessEvent(Functions.MarkPerObjectConfigPendingKill, params.ptr, cast(void*)0);
	}
	void UpdateObjectLists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateObjectLists, cast(void*)0, cast(void*)0);
	}
	void InstallPackages(OnlineSubsystem.OnlineContent* DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = *DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallPackages, params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
	}
	void InstallNonPackageFiles(OnlineSubsystem.OnlineContent* DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = *DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallNonPackageFiles, params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStorageDeviceChange, cast(void*)0, cast(void*)0);
	}
	void OnContentChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnContentChange, cast(void*)0, cast(void*)0);
	}
	void RefreshDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshDLC, cast(void*)0, cast(void*)0);
	}
	void RefreshDLCEnumComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshDLCEnumComplete, cast(void*)0, cast(void*)0);
	}
	void AddPackagesToFullyLoad(ScriptString Filename)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPackagesToFullyLoad, params.ptr, cast(void*)0);
	}
}
