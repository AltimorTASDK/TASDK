module UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface UTDataStore_GameSearchPersonal : UDKDataStore_GameSearchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDataStore_GameSearchPersonal")()); }
	private static __gshared UTDataStore_GameSearchPersonal mDefaultProperties;
	@property final static UTDataStore_GameSearchPersonal DefaultProperties() { mixin(MGDPC!(UTDataStore_GameSearchPersonal, "UTDataStore_GameSearchPersonal UTGame.Default__UTDataStore_GameSearchPersonal")()); }
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
			ScriptFunction HasOutstandingQueries() { mixin(MGF!("mHasOutstandingQueries", "Function UTGame.UTDataStore_GameSearchPersonal.HasOutstandingQueries")()); }
			ScriptFunction OverrideQuerySubmission() { mixin(MGF!("mOverrideQuerySubmission", "Function UTGame.UTDataStore_GameSearchPersonal.OverrideQuerySubmission")()); }
			ScriptFunction GetPlayerName() { mixin(MGF!("mGetPlayerName", "Function UTGame.UTDataStore_GameSearchPersonal.GetPlayerName")()); }
			ScriptFunction GetPlayerNetId() { mixin(MGF!("mGetPlayerNetId", "Function UTGame.UTDataStore_GameSearchPersonal.GetPlayerNetId")()); }
			ScriptFunction FindServerIndexByString() { mixin(MGF!("mFindServerIndexByString", "Function UTGame.UTDataStore_GameSearchPersonal.FindServerIndexByString")()); }
			ScriptFunction FindServerIndexById() { mixin(MGF!("mFindServerIndexById", "Function UTGame.UTDataStore_GameSearchPersonal.FindServerIndexById")()); }
			ScriptFunction AddServer() { mixin(MGF!("mAddServer", "Function UTGame.UTDataStore_GameSearchPersonal.AddServer")()); }
			ScriptFunction RemoveServer() { mixin(MGF!("mRemoveServer", "Function UTGame.UTDataStore_GameSearchPersonal.RemoveServer")()); }
			ScriptFunction GetServerIdList() { mixin(MGF!("mGetServerIdList", "Function UTGame.UTDataStore_GameSearchPersonal.GetServerIdList")()); }
			ScriptFunction GetServerStringList() { mixin(MGF!("mGetServerStringList", "Function UTGame.UTDataStore_GameSearchPersonal.GetServerStringList")()); }
		}
	}
	static struct Constants
	{
		enum MAX_PERSONALSERVERS = 15;
	}
	@property final auto ref
	{
		UTDataStore_GameSearchDM PrimaryGameSearchDataStore() { mixin(MGPC!(UTDataStore_GameSearchDM, 172)()); }
		ScriptString ServerUniqueId() { mixin(MGPC!(ScriptString, 176)()); }
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
	bool GetPlayerNetId(ref OnlineSubsystem.UniqueNetId out_PlayerId, int ControllerId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = out_PlayerId;
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
	int FindServerIndexById(int ControllerId, ref const OnlineSubsystem.UniqueNetId IdToFind)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = IdToFind;
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
	void GetServerIdList(ref ScriptArray!(OnlineSubsystem.UniqueNetId) out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerIdList, params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetServerStringList(ref ScriptArray!(ScriptString) out_ServerList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = out_ServerList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetServerStringList, params.ptr, cast(void*)0);
		*out_ServerList = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
