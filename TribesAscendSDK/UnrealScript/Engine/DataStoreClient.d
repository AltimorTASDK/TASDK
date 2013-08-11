module UnrealScript.Engine.DataStoreClient;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface DataStoreClient : UIRoot
{
	struct PlayerDataStoreGroup
	{
		public @property final auto ref ScriptArray!(UIDataStore) DataStores() { return *cast(ScriptArray!(UIDataStore)*)(cast(size_t)&this + 4); }
		private ubyte __DataStores[12];
		public @property final auto ref LocalPlayer PlayerOwner() { return *cast(LocalPlayer*)(cast(size_t)&this + 0); }
		private ubyte __PlayerOwner[4];
	}
	public @property final auto ref ScriptArray!(ScriptString) GlobalDataStoreClasses() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(UIDataStore) GlobalDataStores() { return *cast(ScriptArray!(UIDataStore)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(ScriptString) PlayerDataStoreClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptArray!(ScriptClass) PlayerDataStoreClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(DataStoreClient.PlayerDataStoreGroup) PlayerDataStores() { return *cast(ScriptArray!(DataStoreClient.PlayerDataStoreGroup)*)(cast(size_t)cast(void*)this + 108); }
	final UIDataStore FindDataStore(ScriptName DataStoreTag, LocalPlayer PlayerOwner)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataStoreTag;
		*cast(LocalPlayer*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7802], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[12];
	}
	final ScriptClass FindDataStoreClass(ScriptClass RequiredMetaClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = RequiredMetaClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7804], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	final UIDataStore CreateDataStore(ScriptClass DataStoreClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DataStoreClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7806], params.ptr, cast(void*)0);
		return *cast(UIDataStore*)&params[4];
	}
	final bool RegisterDataStore(UIDataStore DataStore, LocalPlayer PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		*cast(LocalPlayer*)&params[4] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7808], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void GetPlayerDataStoreClasses(ScriptArray!(ScriptClass)* out_DataStoreClasses)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = *out_DataStoreClasses;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7818], params.ptr, cast(void*)0);
		*out_DataStoreClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
	final bool UnregisterDataStore(UIDataStore DataStore)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UIDataStore*)params.ptr = DataStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7824], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int FindPlayerDataStoreIndex(LocalPlayer PlayerOwner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13653], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13661], cast(void*)0, cast(void*)0);
	}
	final void DebugDumpDataStoreInfo(bool bVerbose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVerbose;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13668], params.ptr, cast(void*)0);
	}
}
