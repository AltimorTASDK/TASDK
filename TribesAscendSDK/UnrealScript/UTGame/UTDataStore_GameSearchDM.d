module UnrealScript.UTGame.UTDataStore_GameSearchDM;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchDM : UDKDataStore_GameSearchBase
{
public extern(D):
	struct GameSearchSettingsStorage
	{
		private ubyte __buffer__[20];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46887], params.ptr, cast(void*)0);
	}
	bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46891], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46895], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindStoredSearchIndex(ScriptName GameSearchName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GameSearchName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46906], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int FindStoredSettingValueIndex(int StoredGameSearchIndex, int LocalizedSettingId, bool bAddIfNecessary)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StoredGameSearchIndex;
		*cast(int*)&params[4] = LocalizedSettingId;
		*cast(bool*)&params[8] = bAddIfNecessary;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46911], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void LoadGameSearchParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46918], cast(void*)0, cast(void*)0);
	}
	void SaveGameSearchParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46926], cast(void*)0, cast(void*)0);
	}
}
