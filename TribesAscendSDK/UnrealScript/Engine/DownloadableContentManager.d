module UnrealScript.Engine.DownloadableContentManager;

import ScriptClasses;
import UnrealScript.Engine.GameEngine;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface DownloadableContentManager : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14711], params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
		return *cast(bool*)&params[68];
	}
	void InstallDLCs(ScriptArray!(OnlineSubsystem.OnlineContent)* DLCBundles)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)params.ptr = *DLCBundles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14714], params.ptr, cast(void*)0);
		*DLCBundles = *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)params.ptr;
	}
	void ClearDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14717], cast(void*)0, cast(void*)0);
	}
	bool GetDLCTextureCachePath(ScriptName TextureCacheName, ScriptString* Path)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TextureCacheName;
		*cast(ScriptString*)&params[8] = *Path;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14718], params.ptr, cast(void*)0);
		*Path = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	void AddSectionToObjectList(ScriptString Section)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Section;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14722], params.ptr, cast(void*)0);
	}
	void MarkPerObjectConfigPendingKill(ScriptString Section)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Section;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14724], params.ptr, cast(void*)0);
	}
	void UpdateObjectLists()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14726], cast(void*)0, cast(void*)0);
	}
	void InstallPackages(OnlineSubsystem.OnlineContent* DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = *DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14727], params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
	}
	void InstallNonPackageFiles(OnlineSubsystem.OnlineContent* DLCBundle)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.OnlineContent*)params.ptr = *DLCBundle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14729], params.ptr, cast(void*)0);
		*DLCBundle = *cast(OnlineSubsystem.OnlineContent*)params.ptr;
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14731], cast(void*)0, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14733], params.ptr, cast(void*)0);
	}
	void OnStorageDeviceChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14735], cast(void*)0, cast(void*)0);
	}
	void OnContentChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14736], cast(void*)0, cast(void*)0);
	}
	void RefreshDLC()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14737], cast(void*)0, cast(void*)0);
	}
	void RefreshDLCEnumComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14741], cast(void*)0, cast(void*)0);
	}
	void AddPackagesToFullyLoad(ScriptString Filename)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14743], params.ptr, cast(void*)0);
	}
}
