module UnrealScript.TribesGame.TrFriendManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrFriendManager : TrObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFriendManager")); }
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
			ScriptFunction RequestFriendsList() { return mRequestFriendsList ? mRequestFriendsList : (mRequestFriendsList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.RequestFriendsList")); }
			ScriptFunction AddFriend() { return mAddFriend ? mAddFriend : (mAddFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.AddFriend")); }
			ScriptFunction JoinFriend() { return mJoinFriend ? mJoinFriend : (mJoinFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.JoinFriend")); }
			ScriptFunction IgnoreFriend() { return mIgnoreFriend ? mIgnoreFriend : (mIgnoreFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.IgnoreFriend")); }
			ScriptFunction RemoveFriend() { return mRemoveFriend ? mRemoveFriend : (mRemoveFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.RemoveFriend")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.Update")); }
			ScriptFunction RemoveFromList() { return mRemoveFromList ? mRemoveFromList : (mRemoveFromList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.RemoveFromList")); }
			ScriptFunction GetOnlineFriendCount() { return mGetOnlineFriendCount ? mGetOnlineFriendCount : (mGetOnlineFriendCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.GetOnlineFriendCount")); }
			ScriptFunction GetInGameFriendCount() { return mGetInGameFriendCount ? mGetInGameFriendCount : (mGetInGameFriendCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.GetInGameFriendCount")); }
			ScriptFunction GetOnlineFollowerCount() { return mGetOnlineFollowerCount ? mGetOnlineFollowerCount : (mGetOnlineFollowerCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.GetOnlineFollowerCount")); }
			ScriptFunction IsFriend() { return mIsFriend ? mIsFriend : (mIsFriend = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.IsFriend")); }
			ScriptFunction GetFriendListIndex() { return mGetFriendListIndex ? mGetFriendListIndex : (mGetFriendListIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.GetFriendListIndex")); }
			ScriptFunction AddFriendScoreboard() { return mAddFriendScoreboard ? mAddFriendScoreboard : (mAddFriendScoreboard = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFriendManager.AddFriendScoreboard")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrFriendManager.FriendStruct")); }
		@property final auto ref
		{
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			TrFriendManager.EOnlineState OnlineState() { return *cast(TrFriendManager.EOnlineState*)(cast(size_t)&this + 16); }
			int PlayerID() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString RecentlyAddedFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
			ScriptArray!(TrFriendManager.FriendStruct) FriendsList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 96); }
			ScriptArray!(TrFriendManager.FriendStruct) FollowersList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(TrFriendManager.FriendStruct) IgnoredList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 120); }
			GFxObject GFxList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 92); }
			int GFxCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int PrevBlockedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int PrevFollowerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int PrevFriendCount() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool AddFriendSuccess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool AddFriendSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
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
