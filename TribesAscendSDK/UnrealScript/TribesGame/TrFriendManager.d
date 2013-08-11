module UnrealScript.TribesGame.TrFriendManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrFriendManager : TrObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57686], cast(void*)0, cast(void*)0);
	}
	void AddFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57687], params.ptr, cast(void*)0);
	}
	bool JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57689], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void IgnoreFriend(ScriptString PlayerName, bool bIgnore)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(bool*)&params[12] = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57693], params.ptr, cast(void*)0);
	}
	void RemoveFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57696], params.ptr, cast(void*)0);
	}
	void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57698], cast(void*)0, cast(void*)0);
	}
	void RemoveFromList(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57703], params.ptr, cast(void*)0);
	}
	int GetOnlineFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57707], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetInGameFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57712], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetOnlineFollowerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57716], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsFriend(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57720], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetFriendListIndex(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57724], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void AddFriendScoreboard(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57728], params.ptr, cast(void*)0);
	}
}
