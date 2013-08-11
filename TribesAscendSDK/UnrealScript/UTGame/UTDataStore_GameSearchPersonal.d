module UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface UTDataStore_GameSearchPersonal : UDKDataStore_GameSearchBase
{
	public static immutable auto MAX_PERSONALSERVERS = 15;
	public @property final auto ref UTDataStore_GameSearchDM PrimaryGameSearchDataStore() { return *cast(UTDataStore_GameSearchDM*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptString ServerUniqueId() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	final bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46900], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OverrideQuerySubmission(ubyte ControllerId, OnlineGameSearch Search)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = ControllerId;
		*cast(OnlineGameSearch*)&params[4] = Search;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46940], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final ScriptString GetPlayerName(int ControllerId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46951], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final bool GetPlayerNetId(OnlineSubsystem.UniqueNetId* out_PlayerId, int ControllerId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *out_PlayerId;
		*cast(int*)&params[8] = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46956], params.ptr, cast(void*)0);
		*out_PlayerId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final int FindServerIndexByString(int ControllerId, ScriptString IdToFind)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = IdToFind;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46962], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final int FindServerIndexById(int ControllerId, OnlineSubsystem.UniqueNetId* IdToFind)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = *IdToFind;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46968], params.ptr, cast(void*)0);
		*IdToFind = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
		return *cast(int*)&params[12];
	}
	final bool AddServer(int ControllerId, OnlineSubsystem.UniqueNetId IdToAdd)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = IdToAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46972], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RemoveServer(int ControllerId, OnlineSubsystem.UniqueNetId IdToRemove)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = IdToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46980], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void GetServerIdList(ScriptArray!(OnlineSubsystem.UniqueNetId)* out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46987], params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	final void GetServerStringList(ScriptArray!(ScriptString)* out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46992], params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
