module UnrealScript.Engine.GameEngine;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Level;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PendingLevel;
import UnrealScript.Engine.Engine;
import UnrealScript.Engine.DownloadableContentManager;
import UnrealScript.Engine.ObjectReferencer;
import UnrealScript.Engine.DownloadableContentEnumerator;
import UnrealScript.Engine.InGameAdManager;

extern(C++) interface GameEngine : Engine
{
	enum EFullyLoadPackageType : ubyte
	{
		FULLYLOAD_Map = 0,
		FULLYLOAD_Game_PreLoadClass = 1,
		FULLYLOAD_Game_PostLoadClass = 2,
		FULLYLOAD_Always = 3,
		FULLYLOAD_Mutator = 4,
		FULLYLOAD_MAX = 5,
	}
	struct LevelStreamingStatus
	{
		public @property final auto ref ScriptName PackageName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __PackageName[8];
		public @property final bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bShouldBeLoaded[4];
		public @property final bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
		public @property final bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		private ubyte __bShouldBeVisible[4];
	}
	struct FullyLoadedPackagesInfo
	{
		public @property final auto ref ScriptArray!(ScriptName) PackagesToLoad() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 16); }
		private ubyte __PackagesToLoad[12];
		public @property final auto ref ScriptArray!(UObject) LoadedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)&this + 28); }
		private ubyte __LoadedObjects[12];
		public @property final auto ref ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __Tag[12];
		public @property final auto ref GameEngine.EFullyLoadPackageType FullyLoadType() { return *cast(GameEngine.EFullyLoadPackageType*)(cast(size_t)&this + 0); }
		private ubyte __FullyLoadType[1];
	}
	struct NamedNetDriver
	{
		// WARNING: Property 'NetDriver' has the same name as a defined type!
		public @property final auto ref ScriptName NetDriverName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __NetDriverName[8];
	}
	struct URL
	{
		public @property final auto ref ScriptString Protocol() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Protocol[12];
		public @property final auto ref ScriptString Host() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __Host[12];
		public @property final auto ref int Port() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __Port[4];
		public @property final auto ref ScriptString Map() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __Map[12];
		public @property final auto ref ScriptArray!(ScriptString) Op() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 40); }
		private ubyte __Op[12];
		public @property final auto ref ScriptString Portal() { return *cast(ScriptString*)(cast(size_t)&this + 52); }
		private ubyte __Portal[12];
		public @property final auto ref int Valid() { return *cast(int*)(cast(size_t)&this + 64); }
		private ubyte __Valid[4];
	}
	public @property final auto ref PendingLevel GPendingLevel() { return *cast(PendingLevel*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref ScriptString PendingLevelPlayerControllerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref GameEngine.URL LastURL() { return *cast(GameEngine.URL*)(cast(size_t)cast(void*)this + 1500); }
	public @property final auto ref GameEngine.URL LastRemoteURL() { return *cast(GameEngine.URL*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref ScriptArray!(ScriptString) ServerActors() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref ScriptString TravelURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1648); }
	public @property final auto ref ubyte TravelType() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1660); }
	public @property final bool bWorldWasLoadedThisTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x1) != 0; }
	public @property final bool bWorldWasLoadedThisTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x1; } return val; }
	public @property final bool bShouldCommitPendingMapChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x2) != 0; }
	public @property final bool bShouldCommitPendingMapChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x2; } return val; }
	public @property final bool bClearAnimSetLinkupCachesOnLoadMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x4) != 0; }
	public @property final bool bClearAnimSetLinkupCachesOnLoadMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x4; } return val; }
	// WARNING: Property 'OnlineSubsystem' has the same name as a defined type!
	public @property final auto ref DownloadableContentEnumerator DLCEnumerator() { return *cast(DownloadableContentEnumerator*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref ScriptString DownloadableContentEnumeratorClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1676); }
	public @property final auto ref DownloadableContentManager DLCManager() { return *cast(DownloadableContentManager*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref ScriptString DownloadableContentManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1692); }
	public @property final auto ref InGameAdManager AdManager() { return *cast(InGameAdManager*)(cast(size_t)cast(void*)this + 1704); }
	public @property final auto ref ScriptString InGameAdManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1708); }
	public @property final auto ref ScriptArray!(ScriptName) LevelsToLoadForPendingMapChange() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1720); }
	public @property final auto ref ScriptArray!(Level) LoadedLevelsForPendingMapChange() { return *cast(ScriptArray!(Level)*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref ScriptString PendingMapChangeFailureDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref float MaxDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref ScriptArray!(GameEngine.LevelStreamingStatus) PendingLevelStreamingStatusUpdates() { return *cast(ScriptArray!(GameEngine.LevelStreamingStatus)*)(cast(size_t)cast(void*)this + 1760); }
	public @property final auto ref ScriptArray!(ObjectReferencer) ObjectReferencers() { return *cast(ScriptArray!(ObjectReferencer)*)(cast(size_t)cast(void*)this + 1772); }
	public @property final auto ref ScriptArray!(GameEngine.FullyLoadedPackagesInfo) PackagesToFullyLoad() { return *cast(ScriptArray!(GameEngine.FullyLoadedPackagesInfo)*)(cast(size_t)cast(void*)this + 1784); }
	public @property final auto ref ScriptArray!(GameEngine.NamedNetDriver) NamedNetDrivers() { return *cast(ScriptArray!(GameEngine.NamedNetDriver)*)(cast(size_t)cast(void*)this + 1796); }
	final OnlineSubsystem GetOnlineSubsystem()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7627], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem*)params.ptr;
	}
	final DownloadableContentManager GetDLCManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14696], params.ptr, cast(void*)0);
		return *cast(DownloadableContentManager*)params.ptr;
	}
	final DownloadableContentEnumerator GetDLCEnumerator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14739], params.ptr, cast(void*)0);
		return *cast(DownloadableContentEnumerator*)params.ptr;
	}
	final bool CreateNamedNetDriver(ScriptName NetDriverName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NetDriverName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16684], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void DestroyNamedNetDriver(ScriptName NetDriverName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NetDriverName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16687], params.ptr, cast(void*)0);
	}
	final InGameAdManager GetAdManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16689], params.ptr, cast(void*)0);
		return *cast(InGameAdManager*)params.ptr;
	}
}
