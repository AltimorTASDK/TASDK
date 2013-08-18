module UnrealScript.Engine.UIDataProvider_OnlineFriends;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlineFriends : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_OnlineFriends")); }
	private static __gshared UIDataProvider_OnlineFriends mDefaultProperties;
	@property final static UIDataProvider_OnlineFriends DefaultProperties() { mixin(MGDPC("UIDataProvider_OnlineFriends", "UIDataProvider_OnlineFriends Engine.Default__UIDataProvider_OnlineFriends")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mOnFriendsReadComplete;
			ScriptFunction mOnLoginChange;
			ScriptFunction mRefreshFriendsList;
		}
		public @property static final
		{
			ScriptFunction OnRegister() { mixin(MGF("mOnRegister", "Function Engine.UIDataProvider_OnlineFriends.OnRegister")); }
			ScriptFunction OnUnregister() { mixin(MGF("mOnUnregister", "Function Engine.UIDataProvider_OnlineFriends.OnUnregister")); }
			ScriptFunction OnFriendsReadComplete() { mixin(MGF("mOnFriendsReadComplete", "Function Engine.UIDataProvider_OnlineFriends.OnFriendsReadComplete")); }
			ScriptFunction OnLoginChange() { mixin(MGF("mOnLoginChange", "Function Engine.UIDataProvider_OnlineFriends.OnLoginChange")); }
			ScriptFunction RefreshFriendsList() { mixin(MGF("mRefreshFriendsList", "Function Engine.UIDataProvider_OnlineFriends.RefreshFriendsList")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineFriend) FriendsList() { mixin(MGPC("ScriptArray!(OnlineSubsystem.OnlineFriend)", 96)); }
		ScriptString BusyText() { mixin(MGPC("ScriptString", 264)); }
		ScriptString AwayText() { mixin(MGPC("ScriptString", 252)); }
		ScriptString OnlineText() { mixin(MGPC("ScriptString", 240)); }
		ScriptString OfflineText() { mixin(MGPC("ScriptString", 228)); }
		ScriptString bHasInvitedYouCol() { mixin(MGPC("ScriptString", 216)); }
		ScriptString bHaveInvitedCol() { mixin(MGPC("ScriptString", 204)); }
		ScriptString bHasVoiceSupportCol() { mixin(MGPC("ScriptString", 192)); }
		ScriptString bIsJoinableCol() { mixin(MGPC("ScriptString", 180)); }
		ScriptString bIsPlayingThisGameCol() { mixin(MGPC("ScriptString", 168)); }
		ScriptString bIsPlayingCol() { mixin(MGPC("ScriptString", 156)); }
		ScriptString bIsOnlineCol() { mixin(MGPC("ScriptString", 144)); }
		ScriptString FriendStateCol() { mixin(MGPC("ScriptString", 132)); }
		ScriptString PresenceInfoCol() { mixin(MGPC("ScriptString", 120)); }
		ScriptString NickNameCol() { mixin(MGPC("ScriptString", 108)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 92)); }
	}
final:
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
	void OnFriendsReadComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendsReadComplete, params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void RefreshFriendsList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshFriendsList, cast(void*)0, cast(void*)0);
	}
}
