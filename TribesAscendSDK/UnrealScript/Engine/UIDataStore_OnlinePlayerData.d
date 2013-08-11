module UnrealScript.Engine.UIDataStore_OnlinePlayerData;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;
import UnrealScript.Engine.UIDataProvider_OnlinePartyChatList;
import UnrealScript.Engine.UIDataProvider_PlayerAchievements;
import UnrealScript.Engine.UIDataProvider_OnlineFriendMessages;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.UIDataProvider_OnlineFriends;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerStorage;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataStore_OnlinePlayerData : UIDataStore_Remote
{
	public @property final auto ref UIDataProvider_OnlineProfileSettings ProfileProvider() { return *cast(UIDataProvider_OnlineProfileSettings*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UIDataProvider_OnlinePartyChatList PartyChatProvider() { return *cast(UIDataProvider_OnlinePartyChatList*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptClass PartyChatProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptString PartyChatProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptClass AchievementsProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString AchievementsProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptClass FriendMessagesProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptString FriendMessagesProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptClass FriendsProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptString FriendsProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref UIDataProvider_PlayerAchievements AchievementsProvider() { return *cast(UIDataProvider_PlayerAchievements*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref UIDataProvider_OnlineFriendMessages FriendMessagesProvider() { return *cast(UIDataProvider_OnlineFriendMessages*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref UIDataProvider_OnlinePlayerStorage StorageProvider() { return *cast(UIDataProvider_OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptClass PlayerStorageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString PlayerStorageClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptClass ProfileSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString ProfileSettingsClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString PlayerNick() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int PlayerControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UIDataProvider_OnlineFriends FriendsProvider() { return *cast(UIDataProvider_OnlineFriends*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	final void OnSettingProviderChanged(UIDataProvider SourceProvider, ScriptName SettingsName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = SettingsName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28750], params.ptr, cast(void*)0);
	}
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28753], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28757], cast(void*)0, cast(void*)0);
	}
	final void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28760], params.ptr, cast(void*)0);
	}
	final void OnPlayerDataChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28764], cast(void*)0, cast(void*)0);
	}
	final void RegisterDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28766], cast(void*)0, cast(void*)0);
	}
	final void ClearDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28767], cast(void*)0, cast(void*)0);
	}
	final OnlineProfileSettings GetCachedPlayerProfile(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28768], params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	final OnlinePlayerStorage GetCachedPlayerStorage(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28774], params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
}
