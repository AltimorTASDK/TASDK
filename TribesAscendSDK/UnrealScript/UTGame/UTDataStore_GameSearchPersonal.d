module UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface UTDataStore_GameSearchPersonal : UDKDataStore_GameSearchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDataStore_GameSearchPersonal")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mOverrideQuerySubmission;
			ScriptFunction mGetPlayerName;
			ScriptFunction mGetPlayerNetId;
			ScriptFunction mFindServerIndexByString;
			ScriptFunction mFindServerIndexById;
			ScriptFunction mAddServer;
			ScriptFunction mRemoveServer;
			ScriptFunction mGetServerIdList;
			ScriptFunction mGetServerStringList;
		}
		public @property static final
		{
			ScriptFunction HasOutstandingQueries() { return mHasOutstandingQueries ? mHasOutstandingQueries : (mHasOutstandingQueries = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.HasOutstandingQueries")); }
			ScriptFunction OverrideQuerySubmission() { return mOverrideQuerySubmission ? mOverrideQuerySubmission : (mOverrideQuerySubmission = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.OverrideQuerySubmission")); }
			ScriptFunction GetPlayerName() { return mGetPlayerName ? mGetPlayerName : (mGetPlayerName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.GetPlayerName")); }
			ScriptFunction GetPlayerNetId() { return mGetPlayerNetId ? mGetPlayerNetId : (mGetPlayerNetId = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.GetPlayerNetId")); }
			ScriptFunction FindServerIndexByString() { return mFindServerIndexByString ? mFindServerIndexByString : (mFindServerIndexByString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.FindServerIndexByString")); }
			ScriptFunction FindServerIndexById() { return mFindServerIndexById ? mFindServerIndexById : (mFindServerIndexById = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.FindServerIndexById")); }
			ScriptFunction AddServer() { return mAddServer ? mAddServer : (mAddServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.AddServer")); }
			ScriptFunction RemoveServer() { return mRemoveServer ? mRemoveServer : (mRemoveServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.RemoveServer")); }
			ScriptFunction GetServerIdList() { return mGetServerIdList ? mGetServerIdList : (mGetServerIdList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.GetServerIdList")); }
			ScriptFunction GetServerStringList() { return mGetServerStringList ? mGetServerStringList : (mGetServerStringList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchPersonal.GetServerStringList")); }
		}
	}
	static struct Constants
	{
		enum MAX_PERSONALSERVERS = 15;
	}
	@property final auto ref
	{
		UTDataStore_GameSearchDM PrimaryGameSearchDataStore() { return *cast(UTDataStore_GameSearchDM*)(cast(size_t)cast(void*)this + 172); }
		ScriptString ServerUniqueId() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	}
final:
	bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverrideQuerySubmission(ubyte ControllerId, OnlineGameSearch Search)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerId;
		*cast(OnlineGameSearch*)&params[4] = Search;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideQuerySubmission, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetPlayerName(int ControllerId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool GetPlayerNetId(OnlineSubsystem.UniqueNetId* out_PlayerId, int ControllerId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *out_PlayerId;
		*cast(int*)&params[8] = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerNetId, params.ptr, cast(void*)0);
		*out_PlayerId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[12];
	}
	int FindServerIndexByString(int ControllerId, ScriptString IdToFind)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = IdToFind;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindServerIndexByString, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	int FindServerIndexById(int ControllerId, OnlineSubsystem.UniqueNetId* IdToFind)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = *IdToFind;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindServerIndexById, params.ptr, cast(void*)0);
		*IdToFind = *cast(OnlineSubsystem.UniqueNetId*)&params[4];
		return *cast(int*)&params[12];
	}
	bool AddServer(int ControllerId, OnlineSubsystem.UniqueNetId IdToAdd)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = IdToAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddServer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool RemoveServer(int ControllerId, OnlineSubsystem.UniqueNetId IdToRemove)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = IdToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveServer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void GetServerIdList(ScriptArray!(OnlineSubsystem.UniqueNetId)* out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerIdList, params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetServerStringList(ScriptArray!(ScriptString)* out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerStringList, params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
