module UnrealScript.TribesGame.TrFriendManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrFriendManager : TrObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFriendManager")()); }
	private static __gshared TrFriendManager mDefaultProperties;
	@property final static TrFriendManager DefaultProperties() { mixin(MGDPC!(TrFriendManager, "TrFriendManager TribesGame.Default__TrFriendManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRequestFriendsList;
			ScriptFunction mAddFriend;
			ScriptFunction mJoinFriend;
			ScriptFunction mIgnoreFriend;
			ScriptFunction mRemoveFriend;
			ScriptFunction mUpdate;
			ScriptFunction mRemoveFromList;
			ScriptFunction mGetOnlineFriendCount;
			ScriptFunction mGetInGameFriendCount;
			ScriptFunction mGetOnlineFollowerCount;
			ScriptFunction mIsFriend;
			ScriptFunction mGetFriendListIndex;
			ScriptFunction mAddFriendScoreboard;
		}
		public @property static final
		{
			ScriptFunction RequestFriendsList() { mixin(MGF!("mRequestFriendsList", "Function TribesGame.TrFriendManager.RequestFriendsList")()); }
			ScriptFunction AddFriend() { mixin(MGF!("mAddFriend", "Function TribesGame.TrFriendManager.AddFriend")()); }
			ScriptFunction JoinFriend() { mixin(MGF!("mJoinFriend", "Function TribesGame.TrFriendManager.JoinFriend")()); }
			ScriptFunction IgnoreFriend() { mixin(MGF!("mIgnoreFriend", "Function TribesGame.TrFriendManager.IgnoreFriend")()); }
			ScriptFunction RemoveFriend() { mixin(MGF!("mRemoveFriend", "Function TribesGame.TrFriendManager.RemoveFriend")()); }
			ScriptFunction Update() { mixin(MGF!("mUpdate", "Function TribesGame.TrFriendManager.Update")()); }
			ScriptFunction RemoveFromList() { mixin(MGF!("mRemoveFromList", "Function TribesGame.TrFriendManager.RemoveFromList")()); }
			ScriptFunction GetOnlineFriendCount() { mixin(MGF!("mGetOnlineFriendCount", "Function TribesGame.TrFriendManager.GetOnlineFriendCount")()); }
			ScriptFunction GetInGameFriendCount() { mixin(MGF!("mGetInGameFriendCount", "Function TribesGame.TrFriendManager.GetInGameFriendCount")()); }
			ScriptFunction GetOnlineFollowerCount() { mixin(MGF!("mGetOnlineFollowerCount", "Function TribesGame.TrFriendManager.GetOnlineFollowerCount")()); }
			ScriptFunction IsFriend() { mixin(MGF!("mIsFriend", "Function TribesGame.TrFriendManager.IsFriend")()); }
			ScriptFunction GetFriendListIndex() { mixin(MGF!("mGetFriendListIndex", "Function TribesGame.TrFriendManager.GetFriendListIndex")()); }
			ScriptFunction AddFriendScoreboard() { mixin(MGF!("mAddFriendScoreboard", "Function TribesGame.TrFriendManager.AddFriendScoreboard")()); }
		}
	}
	enum EOnlineState : ubyte
	{
		EOS_OFFLINE = 0,
		EOS_ONLINE = 1,
		EOS_INGAME = 2,
		EOS_MAX = 3,
	}
	struct FriendStruct
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrFriendManager.FriendStruct")()); }
		@property final auto ref
		{
			ScriptString PlayerName() { mixin(MGPS!("ScriptString", 4)()); }
			TrFriendManager.EOnlineState OnlineState() { mixin(MGPS!("TrFriendManager.EOnlineState", 16)()); }
			int PlayerID() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString RecentlyAddedFriend() { mixin(MGPC!("ScriptString", 76)()); }
			ScriptArray!(TrFriendManager.FriendStruct) FriendsList() { mixin(MGPC!("ScriptArray!(TrFriendManager.FriendStruct)", 96)()); }
			ScriptArray!(TrFriendManager.FriendStruct) FollowersList() { mixin(MGPC!("ScriptArray!(TrFriendManager.FriendStruct)", 108)()); }
			ScriptArray!(TrFriendManager.FriendStruct) IgnoredList() { mixin(MGPC!("ScriptArray!(TrFriendManager.FriendStruct)", 120)()); }
			GFxObject GFxList() { mixin(MGPC!("GFxObject", 92)()); }
			int GFxCount() { mixin(MGPC!("int", 88)()); }
			int PrevBlockedCount() { mixin(MGPC!("int", 68)()); }
			int PrevFollowerCount() { mixin(MGPC!("int", 64)()); }
			int PrevFriendCount() { mixin(MGPC!("int", 60)()); }
		}
		bool AddFriendSuccess() { mixin(MGBPC!(72, 0x1)()); }
		bool AddFriendSuccess(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
final:
	void RequestFriendsList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestFriendsList, cast(void*)0, cast(void*)0);
	}
	void AddFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriend, params.ptr, cast(void*)0);
	}
	bool JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void IgnoreFriend(ScriptString PlayerName, bool bIgnore)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(bool*)&params[12] = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(Functions.IgnoreFriend, params.ptr, cast(void*)0);
	}
	void RemoveFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFriend, params.ptr, cast(void*)0);
	}
	void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, cast(void*)0, cast(void*)0);
	}
	void RemoveFromList(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromList, params.ptr, cast(void*)0);
	}
	int GetOnlineFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOnlineFriendCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetInGameFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInGameFriendCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetOnlineFollowerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOnlineFollowerCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsFriend(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFriend, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetFriendListIndex(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendListIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void AddFriendScoreboard(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFriendScoreboard, params.ptr, cast(void*)0);
	}
}
