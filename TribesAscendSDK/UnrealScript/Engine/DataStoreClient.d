module UnrealScript.Engine.DataStoreClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface DataStoreClient : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DataStoreClient")); }
	private static __gshared DataStoreClient mDefaultProperties;
	@property final static DataStoreClient DefaultProperties() { mixin(MGDPC("DataStoreClient", "DataStoreClient Engine.Default__DataStoreClient")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindDataStore;
			ScriptFunction mFindDataStoreClass;
			ScriptFunction mCreateDataStore;
			ScriptFunction mRegisterDataStore;
			ScriptFunction mGetPlayerDataStoreClasses;
			ScriptFunction mUnregisterDataStore;
			ScriptFunction mFindPlayerDataStoreIndex;
			ScriptFunction mNotifyGameSessionEnded;
			ScriptFunction mDebugDumpDataStoreInfo;
		}
		public @property static final
		{
			ScriptFunction FindDataStore() { mixin(MGF("mFindDataStore", "Function Engine.DataStoreClient.FindDataStore")); }
			ScriptFunction FindDataStoreClass() { mixin(MGF("mFindDataStoreClass", "Function Engine.DataStoreClient.FindDataStoreClass")); }
			ScriptFunction CreateDataStore() { mixin(MGF("mCreateDataStore", "Function Engine.DataStoreClient.CreateDataStore")); }
			ScriptFunction RegisterDataStore() { mixin(MGF("mRegisterDataStore", "Function Engine.DataStoreClient.RegisterDataStore")); }
			ScriptFunction GetPlayerDataStoreClasses() { mixin(MGF("mGetPlayerDataStoreClasses", "Function Engine.DataStoreClient.GetPlayerDataStoreClasses")); }
			ScriptFunction UnregisterDataStore() { mixin(MGF("mUnregisterDataStore", "Function Engine.DataStoreClient.UnregisterDataStore")); }
			ScriptFunction FindPlayerDataStoreIndex() { mixin(MGF("mFindPlayerDataStoreIndex", "Function Engine.DataStoreClient.FindPlayerDataStoreIndex")); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF("mNotifyGameSessionEnded", "Function Engine.DataStoreClient.NotifyGameSessionEnded")); }
			ScriptFunction DebugDumpDataStoreInfo() { mixin(MGF("mDebugDumpDataStoreInfo", "Function Engine.DataStoreClient.DebugDumpDataStoreInfo")); }
		}
	}
	struct PlayerDataStoreGroup
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.DataStoreClient.PlayerDataStoreGroup")); }
		@property final auto ref
		{
			ScriptArray!(UIDataStore) DataStores() { mixin(MGPS("ScriptArray!(UIDataStore)", 4)); }
			LocalPlayer PlayerOwner() { mixin(MGPS("LocalPlayer", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) GlobalDataStoreClasses() { mixin(MGPC("ScriptArray!(ScriptString)", 60)); }
		ScriptArray!(UIDataStore) GlobalDataStores() { mixin(MGPC("ScriptArray!(UIDataStore)", 72)); }
		ScriptArray!(ScriptString) PlayerDataStoreClassNames() { mixin(MGPC("ScriptArray!(ScriptString)", 84)); }
		ScriptArray!(ScriptClass) PlayerDataStoreClasses() { mixin(MGPC("ScriptArray!(ScriptClass)", 96)); }
		ScriptArray!(DataStoreClient.PlayerDataStoreGroup) PlayerDataStores() { mixin(MGPC("ScriptArray!(DataStoreClient.PlayerDataStoreGroup)", 108)); }
	}
final:
	UIDataStore FindDataStore(ScriptName DataStoreTag, LocalPlayer* PlayerOwner = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		if (PlayerOwner !is null)
			*cast(LocalPlayer*)&params[8] = *PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindDataStore, params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	ScriptClass FindDataStoreClass(ScriptClass RequiredMetaClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = RequiredMetaClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindDataStoreClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	UIDataStore CreateDataStore(ScriptClass DataStoreClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DataStoreClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateDataStore, params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[4];
	}
	bool RegisterDataStore(UIDataStore DataStore, LocalPlayer* PlayerOwner = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		if (PlayerOwner !is null)
			*cast(LocalPlayer*)&params[4] = *PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterDataStore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void GetPlayerDataStoreClasses(ref ScriptArray!(ScriptClass) out_DataStoreClasses)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = out_DataStoreClasses;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerDataStoreClasses, params.ptr, cast(void*)0);
		out_DataStoreClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
	bool UnregisterDataStore(UIDataStore DataStore)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterDataStore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindPlayerDataStoreIndex(LocalPlayer PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerDataStoreIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
	}
	void DebugDumpDataStoreInfo(bool bVerbose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVerbose;
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugDumpDataStoreInfo, params.ptr, cast(void*)0);
	}
}
