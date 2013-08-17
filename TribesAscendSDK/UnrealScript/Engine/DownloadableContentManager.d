module UnrealScript.Engine.DownloadableContentManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DownloadableContentManager")); }
	private static __gshared DownloadableContentManager mDefaultProperties;
	@property final static DownloadableContentManager DefaultProperties() { mixin(MGDPC("DownloadableContentManager", "DownloadableContentManager Engine.Default__DownloadableContentManager")); }
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
			ScriptFunction InstallDLC() { mixin(MGF("mInstallDLC", "Function Engine.DownloadableContentManager.InstallDLC")); }
			ScriptFunction InstallDLCs() { mixin(MGF("mInstallDLCs", "Function Engine.DownloadableContentManager.InstallDLCs")); }
			ScriptFunction ClearDLC() { mixin(MGF("mClearDLC", "Function Engine.DownloadableContentManager.ClearDLC")); }
			ScriptFunction GetDLCTextureCachePath() { mixin(MGF("mGetDLCTextureCachePath", "Function Engine.DownloadableContentManager.GetDLCTextureCachePath")); }
			ScriptFunction AddSectionToObjectList() { mixin(MGF("mAddSectionToObjectList", "Function Engine.DownloadableContentManager.AddSectionToObjectList")); }
			ScriptFunction MarkPerObjectConfigPendingKill() { mixin(MGF("mMarkPerObjectConfigPendingKill", "Function Engine.DownloadableContentManager.MarkPerObjectConfigPendingKill")); }
			ScriptFunction UpdateObjectLists() { mixin(MGF("mUpdateObjectLists", "Function Engine.DownloadableContentManager.UpdateObjectLists")); }
			ScriptFunction InstallPackages() { mixin(MGF("mInstallPackages", "Function Engine.DownloadableContentManager.InstallPackages")); }
			ScriptFunction InstallNonPackageFiles() { mixin(MGF("mInstallNonPackageFiles", "Function Engine.DownloadableContentManager.InstallNonPackageFiles")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.DownloadableContentManager.Init")); }
			ScriptFunction OnLoginChange() { mixin(MGF("mOnLoginChange", "Function Engine.DownloadableContentManager.OnLoginChange")); }
			ScriptFunction OnStorageDeviceChange() { mixin(MGF("mOnStorageDeviceChange", "Function Engine.DownloadableContentManager.OnStorageDeviceChange")); }
			ScriptFunction OnContentChange() { mixin(MGF("mOnContentChange", "Function Engine.DownloadableContentManager.OnContentChange")); }
			ScriptFunction RefreshDLC() { mixin(MGF("mRefreshDLC", "Function Engine.DownloadableContentManager.RefreshDLC")); }
			ScriptFunction RefreshDLCEnumComplete() { mixin(MGF("mRefreshDLCEnumComplete", "Function Engine.DownloadableContentManager.RefreshDLCEnumComplete")); }
			ScriptFunction AddPackagesToFullyLoad() { mixin(MGF("mAddPackagesToFullyLoad", "Function Engine.DownloadableContentManager.AddPackagesToFullyLoad")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) DLCConfigCacheChanges() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 60)); }
		ScriptArray!(ScriptString) InstalledDLC() { mixin(MGPC("ScriptArray!(ScriptString)", 72)); }
		ScriptArray!(ScriptClass) ClassesToReload() { mixin(MGPC("ScriptArray!(ScriptClass)", 144)); }
		ScriptArray!(UObject) ObjectsToReload() { mixin(MGPC("ScriptArray!(UObject)", 156)); }
		// WARNING: Property 'GameEngine' has the same name as a defined type!
		UObject.Map_Mirror TextureCachePathMap() { mixin(MGPC("UObject.Map_Mirror", 84)); }
	}
final:
	bool InstallDLC(ref in OnlineSubsystem.OnlineContent DLCBundle)
	{
		ubyte params[72];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = cast(OnlineSubsystem.OnlineContent)DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallDLC, params.ptr, cast(void*)0);
		return *cast(bool*)&params[68];
	}
	void InstallDLCs(ref in ScriptArray!(OnlineSubsystem.OnlineContent) DLCBundles)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)params.ptr = cast(ScriptArray!(OnlineSubsystem.OnlineContent))DLCBundles;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallDLCs, params.ptr, cast(void*)0);
	}
	void ClearDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDLC, cast(void*)0, cast(void*)0);
	}
	bool GetDLCTextureCachePath(ScriptName TextureCacheName, ref ScriptString Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TextureCacheName;
		*cast(ScriptString*)&params[8] = Path;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDLCTextureCachePath, params.ptr, cast(void*)0);
		Path = *cast(ScriptString*)&params[8];
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
	void InstallPackages(ref in OnlineSubsystem.OnlineContent DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = cast(OnlineSubsystem.OnlineContent)DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallPackages, params.ptr, cast(void*)0);
	}
	void InstallNonPackageFiles(ref in OnlineSubsystem.OnlineContent DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = cast(OnlineSubsystem.OnlineContent)DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstallNonPackageFiles, params.ptr, cast(void*)0);
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
