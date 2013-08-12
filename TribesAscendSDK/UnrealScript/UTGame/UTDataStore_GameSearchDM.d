module UnrealScript.UTGame.UTDataStore_GameSearchDM;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchDM : UDKDataStore_GameSearchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDataStore_GameSearchDM")); }
	private static __gshared UTDataStore_GameSearchDM mDefaultProperties;
	@property final static UTDataStore_GameSearchDM DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDataStore_GameSearchDM)("UTDataStore_GameSearchDM UTGame.Default__UTDataStore_GameSearchDM")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRegistered;
			ScriptFunction mSubmitGameSearch;
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mFindStoredSearchIndex;
			ScriptFunction mFindStoredSettingValueIndex;
			ScriptFunction mLoadGameSearchParameters;
			ScriptFunction mSaveGameSearchParameters;
		}
		public @property static final
		{
			ScriptFunction Registered() { return mRegistered ? mRegistered : (mRegistered = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.Registered")); }
			ScriptFunction SubmitGameSearch() { return mSubmitGameSearch ? mSubmitGameSearch : (mSubmitGameSearch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.SubmitGameSearch")); }
			ScriptFunction HasOutstandingQueries() { return mHasOutstandingQueries ? mHasOutstandingQueries : (mHasOutstandingQueries = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.HasOutstandingQueries")); }
			ScriptFunction FindStoredSearchIndex() { return mFindStoredSearchIndex ? mFindStoredSearchIndex : (mFindStoredSearchIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.FindStoredSearchIndex")); }
			ScriptFunction FindStoredSettingValueIndex() { return mFindStoredSettingValueIndex ? mFindStoredSettingValueIndex : (mFindStoredSettingValueIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.FindStoredSettingValueIndex")); }
			ScriptFunction LoadGameSearchParameters() { return mLoadGameSearchParameters ? mLoadGameSearchParameters : (mLoadGameSearchParameters = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.LoadGameSearchParameters")); }
			ScriptFunction SaveGameSearchParameters() { return mSaveGameSearchParameters ? mSaveGameSearchParameters : (mSaveGameSearchParameters = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchDM.SaveGameSearchParameters")); }
		}
	}
	struct GameSearchSettingsStorage
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTDataStore_GameSearchDM.GameSearchSettingsStorage")); }
		@property final auto ref
		{
			ScriptArray!(UTDataStore_GameSearchDM.PersistentLocalizedSettingValue) StoredValues() { return *cast(ScriptArray!(UTDataStore_GameSearchDM.PersistentLocalizedSettingValue)*)(cast(size_t)&this + 8); }
			ScriptName GameSearchName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PersistentLocalizedSettingValue
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTDataStore_GameSearchDM.PersistentLocalizedSettingValue")); }
		@property final auto ref
		{
			int ValueId() { return *cast(int*)(cast(size_t)&this + 4); }
			int SettingId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTDataStore_GameSearchDM.GameSearchSettingsStorage) StoredGameSearchValues() { return *cast(ScriptArray!(UTDataStore_GameSearchDM.GameSearchSettingsStorage)*)(cast(size_t)cast(void*)this + 180); }
		UTDataStore_GameSearchHistory HistoryGameSearchDataStore() { return *cast(UTDataStore_GameSearchHistory*)(cast(size_t)cast(void*)this + 176); }
		ScriptClass HistoryGameSearchDataStoreClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 172); }
	}
final:
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubmitGameSearch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindStoredSearchIndex(ScriptName GameSearchName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GameSearchName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindStoredSearchIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int FindStoredSettingValueIndex(int StoredGameSearchIndex, int LocalizedSettingId, bool bAddIfNecessary)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StoredGameSearchIndex;
		*cast(int*)&params[4] = LocalizedSettingId;
		*cast(bool*)&params[8] = bAddIfNecessary;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindStoredSettingValueIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void LoadGameSearchParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadGameSearchParameters, cast(void*)0, cast(void*)0);
	}
	void SaveGameSearchParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveGameSearchParameters, cast(void*)0, cast(void*)0);
	}
}
