module UnrealScript.TribesGame.TrFriendManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrFriendManager : TrObject
{
	enum EOnlineState : ubyte
	{
		EOS_OFFLINE = 0,
		EOS_ONLINE = 1,
		EOS_INGAME = 2,
		EOS_MAX = 3,
	}
	struct FriendStruct
	{
		public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __PlayerName[12];
		public @property final auto ref TrFriendManager.EOnlineState OnlineState() { return *cast(TrFriendManager.EOnlineState*)(cast(size_t)&this + 16); }
		private ubyte __OnlineState[1];
		public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerID[4];
	}
	public @property final bool AddFriendSuccess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool AddFriendSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref ScriptString RecentlyAddedFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) FriendsList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) FollowersList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(TrFriendManager.FriendStruct) IgnoredList() { return *cast(ScriptArray!(TrFriendManager.FriendStruct)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref GFxObject GFxList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int GFxCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int PrevBlockedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int PrevFollowerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int PrevFriendCount() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final void RequestFriendsList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57686], cast(void*)0, cast(void*)0);
	}
	final void AddFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57687], params.ptr, cast(void*)0);
	}
	final bool JoinFriend(ScriptString PlayerName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57689], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void IgnoreFriend(ScriptString PlayerName, bool bIgnore)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(bool*)&params[12] = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57693], params.ptr, cast(void*)0);
	}
	final void RemoveFriend(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57696], params.ptr, cast(void*)0);
	}
	final void Update()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57698], cast(void*)0, cast(void*)0);
	}
	final void RemoveFromList(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57703], params.ptr, cast(void*)0);
	}
	final int GetOnlineFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57707], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetInGameFriendCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57712], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetOnlineFollowerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57716], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool IsFriend(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57720], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final int GetFriendListIndex(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57724], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final void AddFriendScoreboard(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57728], params.ptr, cast(void*)0);
	}
}
