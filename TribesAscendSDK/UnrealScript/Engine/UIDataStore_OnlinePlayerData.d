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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_OnlinePlayerData")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnSettingProviderChanged;
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mOnLoginChange;
			ScriptFunction mOnPlayerDataChange;
			ScriptFunction mRegisterDelegates;
			ScriptFunction mClearDelegates;
			ScriptFunction mGetCachedPlayerProfile;
			ScriptFunction mGetCachedPlayerStorage;
		}
		public @property static final
		{
			ScriptFunction OnSettingProviderChanged() { return mOnSettingProviderChanged ? mOnSettingProviderChanged : (mOnSettingProviderChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.OnSettingProviderChanged")); }
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.OnUnregister")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.OnLoginChange")); }
			ScriptFunction OnPlayerDataChange() { return mOnPlayerDataChange ? mOnPlayerDataChange : (mOnPlayerDataChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.OnPlayerDataChange")); }
			ScriptFunction RegisterDelegates() { return mRegisterDelegates ? mRegisterDelegates : (mRegisterDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.RegisterDelegates")); }
			ScriptFunction ClearDelegates() { return mClearDelegates ? mClearDelegates : (mClearDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.ClearDelegates")); }
			ScriptFunction GetCachedPlayerProfile() { return mGetCachedPlayerProfile ? mGetCachedPlayerProfile : (mGetCachedPlayerProfile = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.GetCachedPlayerProfile")); }
			ScriptFunction GetCachedPlayerStorage() { return mGetCachedPlayerStorage ? mGetCachedPlayerStorage : (mGetCachedPlayerStorage = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlinePlayerData.GetCachedPlayerStorage")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSettingProviderChanged, params.ptr, cast(void*)0);
	}
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
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void OnPlayerDataChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayerDataChange, cast(void*)0, cast(void*)0);
	}
	void RegisterDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterDelegates, cast(void*)0, cast(void*)0);
	}
	void ClearDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDelegates, cast(void*)0, cast(void*)0);
	}
	OnlineProfileSettings GetCachedPlayerProfile(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCachedPlayerProfile, params.ptr, cast(void*)0);
		return *cast(OnlineProfileSettings*)&params[4];
	}
	OnlinePlayerStorage GetCachedPlayerStorage(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCachedPlayerStorage, params.ptr, cast(void*)0);
		return *cast(OnlinePlayerStorage*)&params[4];
	}
}
