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
public extern(D):
	@property final auto ref
	{
		UIDataProvider_OnlineProfileSettings ProfileProvider() { return *cast(UIDataProvider_OnlineProfileSettings*)(cast(size_t)cast(void*)this + 160); }
		UIDataProvider_OnlinePartyChatList PartyChatProvider() { return *cast(UIDataProvider_OnlinePartyChatList*)(cast(size_t)cast(void*)this + 256); }
		ScriptClass PartyChatProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 252); }
		ScriptString PartyChatProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
		ScriptClass AchievementsProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
		ScriptString AchievementsProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
		ScriptClass FriendMessagesProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 220); }
		ScriptString FriendMessagesProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
		ScriptClass FriendsProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 204); }
		ScriptString FriendsProviderClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		UIDataProvider_PlayerAchievements AchievementsProvider() { return *cast(UIDataProvider_PlayerAchievements*)(cast(size_t)cast(void*)this + 188); }
		UIDataProvider_OnlineFriendMessages FriendMessagesProvider() { return *cast(UIDataProvider_OnlineFriendMessages*)(cast(size_t)cast(void*)this + 184); }
		UIDataProvider_OnlinePlayerStorage StorageProvider() { return *cast(UIDataProvider_OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 180); }
		ScriptClass PlayerStorageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 176); }
		ScriptString PlayerStorageClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptClass ProfileSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 156); }
		ScriptString ProfileSettingsClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString PlayerNick() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		int PlayerControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
		UIDataProvider_OnlineFriends FriendsProvider() { return *cast(UIDataProvider_OnlineFriends*)(cast(size_t)cast(void*)this + 124); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	void OnSettingProviderChanged(UIDataProvider SourceProvider, ScriptName SettingsName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = SettingsName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28750], params.ptr, cast(void*)0);
	}
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28753], params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28757], cast(void*)0, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28760], params.ptr, cast(void*)0);
	}
	void OnPlayerDataChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28764], cast(void*)0, cast(void*)0);
	}
	void RegisterDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28766], cast(void*)0, cast(void*)0);
	}
	void ClearDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28767], cast(void*)0, cast(void*)0);
	}
	OnlineProfileSettings GetCachedPlayerProfile(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28768], params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	OnlinePlayerStorage GetCachedPlayerStorage(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28774], params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
}
