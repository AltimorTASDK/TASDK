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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameEngine")); }
	private static __gshared GameEngine mDefaultProperties;
	@property final static GameEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameEngine)("GameEngine Engine.Default__GameEngine")); }
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
			ScriptFunction GetOnlineSubsystem() { return mGetOnlineSubsystem ? mGetOnlineSubsystem : (mGetOnlineSubsystem = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.GetOnlineSubsystem")); }
			ScriptFunction GetDLCManager() { return mGetDLCManager ? mGetDLCManager : (mGetDLCManager = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.GetDLCManager")); }
			ScriptFunction GetDLCEnumerator() { return mGetDLCEnumerator ? mGetDLCEnumerator : (mGetDLCEnumerator = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.GetDLCEnumerator")); }
			ScriptFunction CreateNamedNetDriver() { return mCreateNamedNetDriver ? mCreateNamedNetDriver : (mCreateNamedNetDriver = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.CreateNamedNetDriver")); }
			ScriptFunction DestroyNamedNetDriver() { return mDestroyNamedNetDriver ? mDestroyNamedNetDriver : (mDestroyNamedNetDriver = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.DestroyNamedNetDriver")); }
			ScriptFunction GetAdManager() { return mGetAdManager ? mGetAdManager : (mGetAdManager = ScriptObject.Find!(ScriptFunction)("Function Engine.GameEngine.GetAdManager")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameEngine.LevelStreamingStatus")); }
		@property final
		{
			@property final auto ref ScriptName PackageName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
			bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
			bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		}
	}
	struct FullyLoadedPackagesInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameEngine.FullyLoadedPackagesInfo")); }
		@property final auto ref
		{
			ScriptArray!(ScriptName) PackagesToLoad() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 16); }
			ScriptArray!(UObject) LoadedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)&this + 28); }
			ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			GameEngine.EFullyLoadPackageType FullyLoadType() { return *cast(GameEngine.EFullyLoadPackageType*)(cast(size_t)&this + 0); }
		}
	}
	struct NamedNetDriver
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameEngine.NamedNetDriver")); }
		@property final auto ref
		{
			// WARNING: Property 'NetDriver' has the same name as a defined type!
			ScriptName NetDriverName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct URL
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameEngine.URL")); }
		@property final auto ref
		{
			ScriptString Protocol() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			ScriptString Host() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			int Port() { return *cast(int*)(cast(size_t)&this + 24); }
			ScriptString Map() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			ScriptArray!(ScriptString) Op() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 40); }
			ScriptString Portal() { return *cast(ScriptString*)(cast(size_t)&this + 52); }
			int Valid() { return *cast(int*)(cast(size_t)&this + 64); }
		}
	}
	@property final
	{
		auto ref
		{
			PendingLevel GPendingLevel() { return *cast(PendingLevel*)(cast(size_t)cast(void*)this + 1484); }
			ScriptString PendingLevelPlayerControllerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1488); }
			GameEngine.URL LastURL() { return *cast(GameEngine.URL*)(cast(size_t)cast(void*)this + 1500); }
			GameEngine.URL LastRemoteURL() { return *cast(GameEngine.URL*)(cast(size_t)cast(void*)this + 1568); }
			ScriptArray!(ScriptString) ServerActors() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1636); }
			ScriptString TravelURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1648); }
			ubyte TravelType() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1660); }
			// WARNING: Property 'OnlineSubsystem' has the same name as a defined type!
			DownloadableContentEnumerator DLCEnumerator() { return *cast(DownloadableContentEnumerator*)(cast(size_t)cast(void*)this + 1672); }
			ScriptString DownloadableContentEnumeratorClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1676); }
			DownloadableContentManager DLCManager() { return *cast(DownloadableContentManager*)(cast(size_t)cast(void*)this + 1688); }
			ScriptString DownloadableContentManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1692); }
			InGameAdManager AdManager() { return *cast(InGameAdManager*)(cast(size_t)cast(void*)this + 1704); }
			ScriptString InGameAdManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1708); }
			ScriptArray!(ScriptName) LevelsToLoadForPendingMapChange() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1720); }
			ScriptArray!(Level) LoadedLevelsForPendingMapChange() { return *cast(ScriptArray!(Level)*)(cast(size_t)cast(void*)this + 1732); }
			ScriptString PendingMapChangeFailureDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1744); }
			float MaxDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1756); }
			ScriptArray!(GameEngine.LevelStreamingStatus) PendingLevelStreamingStatusUpdates() { return *cast(ScriptArray!(GameEngine.LevelStreamingStatus)*)(cast(size_t)cast(void*)this + 1760); }
			ScriptArray!(ObjectReferencer) ObjectReferencers() { return *cast(ScriptArray!(ObjectReferencer)*)(cast(size_t)cast(void*)this + 1772); }
			ScriptArray!(GameEngine.FullyLoadedPackagesInfo) PackagesToFullyLoad() { return *cast(ScriptArray!(GameEngine.FullyLoadedPackagesInfo)*)(cast(size_t)cast(void*)this + 1784); }
			ScriptArray!(GameEngine.NamedNetDriver) NamedNetDrivers() { return *cast(ScriptArray!(GameEngine.NamedNetDriver)*)(cast(size_t)cast(void*)this + 1796); }
		}
		bool bWorldWasLoadedThisTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x1) != 0; }
		bool bWorldWasLoadedThisTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x1; } return val; }
		bool bShouldCommitPendingMapChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x2) != 0; }
		bool bShouldCommitPendingMapChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x2; } return val; }
		bool bClearAnimSetLinkupCachesOnLoadMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1664) & 0x4) != 0; }
		bool bClearAnimSetLinkupCachesOnLoadMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1664) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1664) &= ~0x4; } return val; }
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
