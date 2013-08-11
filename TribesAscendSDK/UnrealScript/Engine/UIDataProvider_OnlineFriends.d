module UnrealScript.Engine.UIDataProvider_OnlineFriends;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlineFriends : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineFriend) FriendsList() { return *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)(cast(size_t)cast(void*)this + 96); }
		ScriptString BusyText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
		ScriptString AwayText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
		ScriptString OnlineText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
		ScriptString OfflineText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
		ScriptString bHasInvitedYouCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 216); }
		ScriptString bHaveInvitedCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
		ScriptString bHasVoiceSupportCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString bIsJoinableCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString bIsPlayingThisGameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString bIsPlayingCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString bIsOnlineCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString FriendStateCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString PresenceInfoCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptString NickNameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28206], params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28210], cast(void*)0, cast(void*)0);
	}
	void OnFriendsReadComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28213], params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28217], params.ptr, cast(void*)0);
	}
	void RefreshFriendsList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28221], cast(void*)0, cast(void*)0);
	}
}
