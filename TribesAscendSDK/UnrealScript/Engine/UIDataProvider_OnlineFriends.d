module UnrealScript.Engine.UIDataProvider_OnlineFriends;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlineFriends : UIDataProvider_OnlinePlayerDataBase
{
	public @property final auto ref ScriptArray!(OnlineSubsystem.OnlineFriend) FriendsList() { return *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString BusyText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptString AwayText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptString OnlineText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptString OfflineText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptString bHasInvitedYouCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptString bHaveInvitedCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptString bHasVoiceSupportCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptString bIsJoinableCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString bIsPlayingThisGameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString bIsPlayingCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString bIsOnlineCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString FriendStateCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString PresenceInfoCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString NickNameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28206], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28210], cast(void*)0, cast(void*)0);
	}
	final void OnFriendsReadComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28213], params.ptr, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28217], params.ptr, cast(void*)0);
	}
	final void RefreshFriendsList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28221], cast(void*)0, cast(void*)0);
	}
}
