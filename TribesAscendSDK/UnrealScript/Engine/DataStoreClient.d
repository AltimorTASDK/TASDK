module UnrealScript.Engine.DataStoreClient;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface DataStoreClient : UIRoot
{
public extern(D):
	struct PlayerDataStoreGroup
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(UIDataStore) DataStores() { return *cast(ScriptArray!(UIDataStore)*)(cast(size_t)&this + 4); }
			LocalPlayer PlayerOwner() { return *cast(LocalPlayer*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) GlobalDataStoreClasses() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(UIDataStore) GlobalDataStores() { return *cast(ScriptArray!(UIDataStore)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(ScriptString) PlayerDataStoreClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 84); }
		ScriptArray!(ScriptClass) PlayerDataStoreClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 96); }
		ScriptArray!(DataStoreClient.PlayerDataStoreGroup) PlayerDataStores() { return *cast(ScriptArray!(DataStoreClient.PlayerDataStoreGroup)*)(cast(size_t)cast(void*)this + 108); }
	}
final:
	UIDataStore FindDataStore(ScriptName DataStoreTag, LocalPlayer PlayerOwner)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		*cast(LocalPlayer*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7802], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	ScriptClass FindDataStoreClass(ScriptClass RequiredMetaClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = RequiredMetaClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7804], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	UIDataStore CreateDataStore(ScriptClass DataStoreClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DataStoreClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7806], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[4];
	}
	bool RegisterDataStore(UIDataStore DataStore, LocalPlayer PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		*cast(LocalPlayer*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7808], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void GetPlayerDataStoreClasses(ScriptArray!(ScriptClass)* out_DataStoreClasses)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = *out_DataStoreClasses;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7818], params.ptr, cast(void*)0);
		*out_DataStoreClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
	bool UnregisterDataStore(UIDataStore DataStore)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7824], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindPlayerDataStoreIndex(LocalPlayer PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13653], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13661], cast(void*)0, cast(void*)0);
	}
	void DebugDumpDataStoreInfo(bool bVerbose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVerbose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13668], params.ptr, cast(void*)0);
	}
}
