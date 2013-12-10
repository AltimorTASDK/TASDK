module UnrealScript.Engine.GameEngine;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GameEngine")); }
	private static __gshared GameEngine mDefaultProperties;
	@property final static GameEngine DefaultProperties() { mixin(MGDPC("GameEngine", "GameEngine Engine.Default__GameEngine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetOnlineSubsystem;
			ScriptFunction mGetDLCManager;
			ScriptFunction mGetDLCEnumerator;
			ScriptFunction mCreateNamedNetDriver;
			ScriptFunction mDestroyNamedNetDriver;
			ScriptFunction mGetAdManager;
		}
		public @property static final
		{
			ScriptFunction GetOnlineSubsystem() { mixin(MGF("mGetOnlineSubsystem", "Function Engine.GameEngine.GetOnlineSubsystem")); }
			ScriptFunction GetDLCManager() { mixin(MGF("mGetDLCManager", "Function Engine.GameEngine.GetDLCManager")); }
			ScriptFunction GetDLCEnumerator() { mixin(MGF("mGetDLCEnumerator", "Function Engine.GameEngine.GetDLCEnumerator")); }
			ScriptFunction CreateNamedNetDriver() { mixin(MGF("mCreateNamedNetDriver", "Function Engine.GameEngine.CreateNamedNetDriver")); }
			ScriptFunction DestroyNamedNetDriver() { mixin(MGF("mDestroyNamedNetDriver", "Function Engine.GameEngine.DestroyNamedNetDriver")); }
			ScriptFunction GetAdManager() { mixin(MGF("mGetAdManager", "Function Engine.GameEngine.GetAdManager")); }
		}
	}
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
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameEngine.LevelStreamingStatus")); }
		@property final
		{
			@property final auto ref ScriptName PackageName() { mixin(MGPS("ScriptName", 0)); }
			bool bShouldBeLoaded() { mixin(MGBPS(8, 0x1)); }
			bool bShouldBeLoaded(bool val) { mixin(MSBPS(8, 0x1)); }
			bool bShouldBeVisible() { mixin(MGBPS(8, 0x2)); }
			bool bShouldBeVisible(bool val) { mixin(MSBPS(8, 0x2)); }
		}
	}
	struct FullyLoadedPackagesInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameEngine.FullyLoadedPackagesInfo")); }
		@property final auto ref
		{
			ScriptArray!(ScriptName) PackagesToLoad() { mixin(MGPS("ScriptArray!(ScriptName)", 16)); }
			ScriptArray!(UObject) LoadedObjects() { mixin(MGPS("ScriptArray!(UObject)", 28)); }
			ScriptString Tag() { mixin(MGPS("ScriptString", 4)); }
			GameEngine.EFullyLoadPackageType FullyLoadType() { mixin(MGPS("GameEngine.EFullyLoadPackageType", 0)); }
		}
	}
	struct NamedNetDriver
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameEngine.NamedNetDriver")); }
		@property final auto ref
		{
			Pointer NetDriverVar() { mixin(MGPS("Pointer", 8)); }
			ScriptName NetDriverName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct URL
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameEngine.URL")); }
		@property final auto ref
		{
			ScriptString Protocol() { mixin(MGPS("ScriptString", 0)); }
			ScriptString Host() { mixin(MGPS("ScriptString", 12)); }
			int Port() { mixin(MGPS("int", 24)); }
			ScriptString Map() { mixin(MGPS("ScriptString", 28)); }
			ScriptArray!(ScriptString) Op() { mixin(MGPS("ScriptArray!(ScriptString)", 40)); }
			ScriptString Portal() { mixin(MGPS("ScriptString", 52)); }
			int Valid() { mixin(MGPS("int", 64)); }
		}
	}
	@property final
	{
		auto ref
		{
			PendingLevel GPendingLevel() { mixin(MGPC("PendingLevel", 1484)); }
			ScriptString PendingLevelPlayerControllerClassName() { mixin(MGPC("ScriptString", 1488)); }
			GameEngine.URL LastURL() { mixin(MGPC("GameEngine.URL", 1500)); }
			GameEngine.URL LastRemoteURL() { mixin(MGPC("GameEngine.URL", 1568)); }
			ScriptArray!(ScriptString) ServerActors() { mixin(MGPC("ScriptArray!(ScriptString)", 1636)); }
			ScriptString TravelURL() { mixin(MGPC("ScriptString", 1648)); }
			ubyte TravelType() { mixin(MGPC("ubyte", 1660)); }
			OnlineSubsystem OnlineSubsystemVar() { mixin(MGPC("OnlineSubsystem", 1668)); }
			DownloadableContentEnumerator DLCEnumerator() { mixin(MGPC("DownloadableContentEnumerator", 1672)); }
			ScriptString DownloadableContentEnumeratorClassName() { mixin(MGPC("ScriptString", 1676)); }
			DownloadableContentManager DLCManager() { mixin(MGPC("DownloadableContentManager", 1688)); }
			ScriptString DownloadableContentManagerClassName() { mixin(MGPC("ScriptString", 1692)); }
			InGameAdManager AdManager() { mixin(MGPC("InGameAdManager", 1704)); }
			ScriptString InGameAdManagerClassName() { mixin(MGPC("ScriptString", 1708)); }
			ScriptArray!(ScriptName) LevelsToLoadForPendingMapChange() { mixin(MGPC("ScriptArray!(ScriptName)", 1720)); }
			ScriptArray!(Level) LoadedLevelsForPendingMapChange() { mixin(MGPC("ScriptArray!(Level)", 1732)); }
			ScriptString PendingMapChangeFailureDescription() { mixin(MGPC("ScriptString", 1744)); }
			float MaxDeltaTime() { mixin(MGPC("float", 1756)); }
			ScriptArray!(GameEngine.LevelStreamingStatus) PendingLevelStreamingStatusUpdates() { mixin(MGPC("ScriptArray!(GameEngine.LevelStreamingStatus)", 1760)); }
			ScriptArray!(ObjectReferencer) ObjectReferencers() { mixin(MGPC("ScriptArray!(ObjectReferencer)", 1772)); }
			ScriptArray!(GameEngine.FullyLoadedPackagesInfo) PackagesToFullyLoad() { mixin(MGPC("ScriptArray!(GameEngine.FullyLoadedPackagesInfo)", 1784)); }
			ScriptArray!(GameEngine.NamedNetDriver) NamedNetDrivers() { mixin(MGPC("ScriptArray!(GameEngine.NamedNetDriver)", 1796)); }
		}
		bool bWorldWasLoadedThisTick() { mixin(MGBPC(1664, 0x1)); }
		bool bWorldWasLoadedThisTick(bool val) { mixin(MSBPC(1664, 0x1)); }
		bool bShouldCommitPendingMapChange() { mixin(MGBPC(1664, 0x2)); }
		bool bShouldCommitPendingMapChange(bool val) { mixin(MSBPC(1664, 0x2)); }
		bool bClearAnimSetLinkupCachesOnLoadMap() { mixin(MGBPC(1664, 0x4)); }
		bool bClearAnimSetLinkupCachesOnLoadMap(bool val) { mixin(MSBPC(1664, 0x4)); }
	}
final:
	static OnlineSubsystem GetOnlineSubsystem()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetOnlineSubsystem, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem*)params.ptr;
	}
	static DownloadableContentManager GetDLCManager()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetDLCManager, params.ptr, cast(void*)0);
		return *cast(DownloadableContentManager*)params.ptr;
	}
	static DownloadableContentEnumerator GetDLCEnumerator()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetDLCEnumerator, params.ptr, cast(void*)0);
		return *cast(DownloadableContentEnumerator*)params.ptr;
	}
	bool CreateNamedNetDriver(ScriptName NetDriverName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NetDriverName;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateNamedNetDriver, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DestroyNamedNetDriver(ScriptName NetDriverName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NetDriverName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyNamedNetDriver, params.ptr, cast(void*)0);
	}
	static InGameAdManager GetAdManager()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetAdManager, params.ptr, cast(void*)0);
		return *cast(InGameAdManager*)params.ptr;
	}
}
