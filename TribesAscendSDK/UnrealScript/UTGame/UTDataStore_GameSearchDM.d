module UnrealScript.UTGame.UTDataStore_GameSearchDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchDM : UDKDataStore_GameSearchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDataStore_GameSearchDM")); }
	private static __gshared UTDataStore_GameSearchDM mDefaultProperties;
	@property final static UTDataStore_GameSearchDM DefaultProperties() { mixin(MGDPC("UTDataStore_GameSearchDM", "UTDataStore_GameSearchDM UTGame.Default__UTDataStore_GameSearchDM")); }
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
			ScriptFunction Registered() { mixin(MGF("mRegistered", "Function UTGame.UTDataStore_GameSearchDM.Registered")); }
			ScriptFunction SubmitGameSearch() { mixin(MGF("mSubmitGameSearch", "Function UTGame.UTDataStore_GameSearchDM.SubmitGameSearch")); }
			ScriptFunction HasOutstandingQueries() { mixin(MGF("mHasOutstandingQueries", "Function UTGame.UTDataStore_GameSearchDM.HasOutstandingQueries")); }
			ScriptFunction FindStoredSearchIndex() { mixin(MGF("mFindStoredSearchIndex", "Function UTGame.UTDataStore_GameSearchDM.FindStoredSearchIndex")); }
			ScriptFunction FindStoredSettingValueIndex() { mixin(MGF("mFindStoredSettingValueIndex", "Function UTGame.UTDataStore_GameSearchDM.FindStoredSettingValueIndex")); }
			ScriptFunction LoadGameSearchParameters() { mixin(MGF("mLoadGameSearchParameters", "Function UTGame.UTDataStore_GameSearchDM.LoadGameSearchParameters")); }
			ScriptFunction SaveGameSearchParameters() { mixin(MGF("mSaveGameSearchParameters", "Function UTGame.UTDataStore_GameSearchDM.SaveGameSearchParameters")); }
		}
	}
	struct GameSearchSettingsStorage
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTDataStore_GameSearchDM.GameSearchSettingsStorage")); }
		@property final auto ref
		{
			ScriptArray!(UTDataStore_GameSearchDM.PersistentLocalizedSettingValue) StoredValues() { mixin(MGPS("ScriptArray!(UTDataStore_GameSearchDM.PersistentLocalizedSettingValue)", 8)); }
			ScriptName GameSearchName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct PersistentLocalizedSettingValue
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTDataStore_GameSearchDM.PersistentLocalizedSettingValue")); }
		@property final auto ref
		{
			int ValueId() { mixin(MGPS("int", 4)); }
			int SettingId() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTDataStore_GameSearchDM.GameSearchSettingsStorage) StoredGameSearchValues() { mixin(MGPC("ScriptArray!(UTDataStore_GameSearchDM.GameSearchSettingsStorage)", 180)); }
		UTDataStore_GameSearchHistory HistoryGameSearchDataStore() { mixin(MGPC("UTDataStore_GameSearchHistory", 176)); }
		ScriptClass HistoryGameSearchDataStoreClass() { mixin(MGPC("ScriptClass", 172)); }
	}
final:
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	bool SubmitGameSearch(ubyte ControllerIndex, bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)&params[4] = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubmitGameSearch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool HasOutstandingQueries(bool* bRestrictCheckToSelf = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bRestrictCheckToSelf !is null)
			*cast(bool*)params.ptr = *bRestrictCheckToSelf;
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
	int FindStoredSettingValueIndex(int StoredGameSearchIndex, int LocalizedSettingId, bool* bAddIfNecessary = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StoredGameSearchIndex;
		*cast(int*)&params[4] = LocalizedSettingId;
		if (bAddIfNecessary !is null)
			*cast(bool*)&params[8] = *bAddIfNecessary;
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
