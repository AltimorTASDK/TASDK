module UnrealScript.Engine.UIDataStore_OnlinePlayerData;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_OnlinePlayerData")()); }
	private static __gshared UIDataStore_OnlinePlayerData mDefaultProperties;
	@property final static UIDataStore_OnlinePlayerData DefaultProperties() { mixin(MGDPC!(UIDataStore_OnlinePlayerData, "UIDataStore_OnlinePlayerData Engine.Default__UIDataStore_OnlinePlayerData")()); }
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
			ScriptFunction OnSettingProviderChanged() { mixin(MGF!("mOnSettingProviderChanged", "Function Engine.UIDataStore_OnlinePlayerData.OnSettingProviderChanged")()); }
			ScriptFunction OnRegister() { mixin(MGF!("mOnRegister", "Function Engine.UIDataStore_OnlinePlayerData.OnRegister")()); }
			ScriptFunction OnUnregister() { mixin(MGF!("mOnUnregister", "Function Engine.UIDataStore_OnlinePlayerData.OnUnregister")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function Engine.UIDataStore_OnlinePlayerData.OnLoginChange")()); }
			ScriptFunction OnPlayerDataChange() { mixin(MGF!("mOnPlayerDataChange", "Function Engine.UIDataStore_OnlinePlayerData.OnPlayerDataChange")()); }
			ScriptFunction RegisterDelegates() { mixin(MGF!("mRegisterDelegates", "Function Engine.UIDataStore_OnlinePlayerData.RegisterDelegates")()); }
			ScriptFunction ClearDelegates() { mixin(MGF!("mClearDelegates", "Function Engine.UIDataStore_OnlinePlayerData.ClearDelegates")()); }
			ScriptFunction GetCachedPlayerProfile() { mixin(MGF!("mGetCachedPlayerProfile", "Function Engine.UIDataStore_OnlinePlayerData.GetCachedPlayerProfile")()); }
			ScriptFunction GetCachedPlayerStorage() { mixin(MGF!("mGetCachedPlayerStorage", "Function Engine.UIDataStore_OnlinePlayerData.GetCachedPlayerStorage")()); }
		}
	}
	@property final auto ref
	{
		UIDataProvider_OnlineProfileSettings ProfileProvider() { mixin(MGPC!(UIDataProvider_OnlineProfileSettings, 160)()); }
		UIDataProvider_OnlinePartyChatList PartyChatProvider() { mixin(MGPC!(UIDataProvider_OnlinePartyChatList, 256)()); }
		ScriptClass PartyChatProviderClass() { mixin(MGPC!(ScriptClass, 252)()); }
		ScriptString PartyChatProviderClassName() { mixin(MGPC!(ScriptString, 240)()); }
		ScriptClass AchievementsProviderClass() { mixin(MGPC!(ScriptClass, 236)()); }
		ScriptString AchievementsProviderClassName() { mixin(MGPC!(ScriptString, 224)()); }
		ScriptClass FriendMessagesProviderClass() { mixin(MGPC!(ScriptClass, 220)()); }
		ScriptString FriendMessagesProviderClassName() { mixin(MGPC!(ScriptString, 208)()); }
		ScriptClass FriendsProviderClass() { mixin(MGPC!(ScriptClass, 204)()); }
		ScriptString FriendsProviderClassName() { mixin(MGPC!(ScriptString, 192)()); }
		UIDataProvider_PlayerAchievements AchievementsProvider() { mixin(MGPC!(UIDataProvider_PlayerAchievements, 188)()); }
		UIDataProvider_OnlineFriendMessages FriendMessagesProvider() { mixin(MGPC!(UIDataProvider_OnlineFriendMessages, 184)()); }
		UIDataProvider_OnlinePlayerStorage StorageProvider() { mixin(MGPC!(UIDataProvider_OnlinePlayerStorage, 180)()); }
		ScriptClass PlayerStorageClass() { mixin(MGPC!(ScriptClass, 176)()); }
		ScriptString PlayerStorageClassName() { mixin(MGPC!(ScriptString, 164)()); }
		ScriptClass ProfileSettingsClass() { mixin(MGPC!(ScriptClass, 156)()); }
		ScriptString ProfileSettingsClassName() { mixin(MGPC!(ScriptString, 144)()); }
		ScriptString PlayerNick() { mixin(MGPC!(ScriptString, 132)()); }
		int PlayerControllerId() { mixin(MGPC!(int, 128)()); }
		UIDataProvider_OnlineFriends FriendsProvider() { mixin(MGPC!(UIDataProvider_OnlineFriends, 124)()); }
		UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC!(UObject.Pointer, 120)()); }
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
