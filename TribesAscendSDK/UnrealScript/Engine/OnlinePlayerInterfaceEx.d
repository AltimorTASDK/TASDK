module UnrealScript.Engine.OnlinePlayerInterfaceEx;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePlayerInterfaceEx : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlinePlayerInterfaceEx")); }
	private static __gshared OnlinePlayerInterfaceEx mDefaultProperties;
	@property final static OnlinePlayerInterfaceEx DefaultProperties() { mixin(MGDPC("OnlinePlayerInterfaceEx", "OnlinePlayerInterfaceEx Engine.Default__OnlinePlayerInterfaceEx")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShowFeedbackUI;
			ScriptFunction mShowGamerCardUI;
			ScriptFunction mShowMessagesUI;
			ScriptFunction mShowAchievementsUI;
			ScriptFunction mShowInviteUI;
			ScriptFunction mShowContentMarketplaceUI;
			ScriptFunction mShowMembershipMarketplaceUI;
			ScriptFunction mShowDeviceSelectionUI;
			ScriptFunction mOnDeviceSelectionComplete;
			ScriptFunction mOnProfileDataChanged;
			ScriptFunction mAddDeviceSelectionDoneDelegate;
			ScriptFunction mClearDeviceSelectionDoneDelegate;
			ScriptFunction mGetDeviceSelectionResults;
			ScriptFunction mIsDeviceValid;
			ScriptFunction mUnlockGamerPicture;
			ScriptFunction mAddProfileDataChangedDelegate;
			ScriptFunction mClearProfileDataChangedDelegate;
			ScriptFunction mShowFriendsInviteUI;
			ScriptFunction mShowPlayersUI;
			ScriptFunction mShowCustomPlayersUI;
			ScriptFunction mUnlockAvatarAward;
		}
		public @property static final
		{
			ScriptFunction ShowFeedbackUI() { mixin(MGF("mShowFeedbackUI", "Function Engine.OnlinePlayerInterfaceEx.ShowFeedbackUI")); }
			ScriptFunction ShowGamerCardUI() { mixin(MGF("mShowGamerCardUI", "Function Engine.OnlinePlayerInterfaceEx.ShowGamerCardUI")); }
			ScriptFunction ShowMessagesUI() { mixin(MGF("mShowMessagesUI", "Function Engine.OnlinePlayerInterfaceEx.ShowMessagesUI")); }
			ScriptFunction ShowAchievementsUI() { mixin(MGF("mShowAchievementsUI", "Function Engine.OnlinePlayerInterfaceEx.ShowAchievementsUI")); }
			ScriptFunction ShowInviteUI() { mixin(MGF("mShowInviteUI", "Function Engine.OnlinePlayerInterfaceEx.ShowInviteUI")); }
			ScriptFunction ShowContentMarketplaceUI() { mixin(MGF("mShowContentMarketplaceUI", "Function Engine.OnlinePlayerInterfaceEx.ShowContentMarketplaceUI")); }
			ScriptFunction ShowMembershipMarketplaceUI() { mixin(MGF("mShowMembershipMarketplaceUI", "Function Engine.OnlinePlayerInterfaceEx.ShowMembershipMarketplaceUI")); }
			ScriptFunction ShowDeviceSelectionUI() { mixin(MGF("mShowDeviceSelectionUI", "Function Engine.OnlinePlayerInterfaceEx.ShowDeviceSelectionUI")); }
			ScriptFunction OnDeviceSelectionComplete() { mixin(MGF("mOnDeviceSelectionComplete", "Function Engine.OnlinePlayerInterfaceEx.OnDeviceSelectionComplete")); }
			ScriptFunction OnProfileDataChanged() { mixin(MGF("mOnProfileDataChanged", "Function Engine.OnlinePlayerInterfaceEx.OnProfileDataChanged")); }
			ScriptFunction AddDeviceSelectionDoneDelegate() { mixin(MGF("mAddDeviceSelectionDoneDelegate", "Function Engine.OnlinePlayerInterfaceEx.AddDeviceSelectionDoneDelegate")); }
			ScriptFunction ClearDeviceSelectionDoneDelegate() { mixin(MGF("mClearDeviceSelectionDoneDelegate", "Function Engine.OnlinePlayerInterfaceEx.ClearDeviceSelectionDoneDelegate")); }
			ScriptFunction GetDeviceSelectionResults() { mixin(MGF("mGetDeviceSelectionResults", "Function Engine.OnlinePlayerInterfaceEx.GetDeviceSelectionResults")); }
			ScriptFunction IsDeviceValid() { mixin(MGF("mIsDeviceValid", "Function Engine.OnlinePlayerInterfaceEx.IsDeviceValid")); }
			ScriptFunction UnlockGamerPicture() { mixin(MGF("mUnlockGamerPicture", "Function Engine.OnlinePlayerInterfaceEx.UnlockGamerPicture")); }
			ScriptFunction AddProfileDataChangedDelegate() { mixin(MGF("mAddProfileDataChangedDelegate", "Function Engine.OnlinePlayerInterfaceEx.AddProfileDataChangedDelegate")); }
			ScriptFunction ClearProfileDataChangedDelegate() { mixin(MGF("mClearProfileDataChangedDelegate", "Function Engine.OnlinePlayerInterfaceEx.ClearProfileDataChangedDelegate")); }
			ScriptFunction ShowFriendsInviteUI() { mixin(MGF("mShowFriendsInviteUI", "Function Engine.OnlinePlayerInterfaceEx.ShowFriendsInviteUI")); }
			ScriptFunction ShowPlayersUI() { mixin(MGF("mShowPlayersUI", "Function Engine.OnlinePlayerInterfaceEx.ShowPlayersUI")); }
			ScriptFunction ShowCustomPlayersUI() { mixin(MGF("mShowCustomPlayersUI", "Function Engine.OnlinePlayerInterfaceEx.ShowCustomPlayersUI")); }
			ScriptFunction UnlockAvatarAward() { mixin(MGF("mUnlockAvatarAward", "Function Engine.OnlinePlayerInterfaceEx.UnlockAvatarAward")); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnProfileDataChanged__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDeviceSelectionComplete__Delegate'!
	}
final:
	bool ShowFeedbackUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFeedbackUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowGamerCardUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowGamerCardUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowMessagesUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMessagesUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowAchievementsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowAchievementsUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowInviteUI(ubyte LocalUserNum, ScriptString* InviteText = null)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		if (InviteText !is null)
			*cast(ScriptString*)&params[4] = *InviteText;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowInviteUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ShowContentMarketplaceUI(ubyte LocalUserNum, int* CategoryMask = null, int* OfferId = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		if (CategoryMask !is null)
			*cast(int*)&params[4] = *CategoryMask;
		if (OfferId !is null)
			*cast(int*)&params[8] = *OfferId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowContentMarketplaceUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowMembershipMarketplaceUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMembershipMarketplaceUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowDeviceSelectionUI(ubyte LocalUserNum, int SizeNeeded, bool* bManageStorage = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = SizeNeeded;
		if (bManageStorage !is null)
			*cast(bool*)&params[8] = *bManageStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowDeviceSelectionUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnDeviceSelectionComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceSelectionComplete, params.ptr, cast(void*)0);
	}
	void OnProfileDataChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnProfileDataChanged, cast(void*)0, cast(void*)0);
	}
	void AddDeviceSelectionDoneDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DeviceDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = DeviceDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDeviceSelectionDoneDelegate, params.ptr, cast(void*)0);
	}
	void ClearDeviceSelectionDoneDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DeviceDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = DeviceDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDeviceSelectionDoneDelegate, params.ptr, cast(void*)0);
	}
	int GetDeviceSelectionResults(ubyte LocalUserNum, ref ScriptString DeviceName)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = DeviceName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceSelectionResults, params.ptr, cast(void*)0);
		DeviceName = *cast(ScriptString*)&params[4];
		return *cast(int*)&params[16];
	}
	bool IsDeviceValid(int DeviceID, int* SizeNeeded = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = DeviceID;
		if (SizeNeeded !is null)
			*cast(int*)&params[4] = *SizeNeeded;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDeviceValid, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnlockGamerPicture(ubyte LocalUserNum, int PictureId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = PictureId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnlockGamerPicture, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddProfileDataChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ProfileDataChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ProfileDataChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddProfileDataChangedDelegate, params.ptr, cast(void*)0);
	}
	void ClearProfileDataChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ProfileDataChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ProfileDataChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearProfileDataChangedDelegate, params.ptr, cast(void*)0);
	}
	bool ShowFriendsInviteUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFriendsInviteUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowPlayersUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPlayersUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowCustomPlayersUI(ubyte LocalUserNum, ref in ScriptArray!(OnlineSubsystem.UniqueNetId) Players, ScriptString Title, ScriptString Description)
	{
		ubyte params[44];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))Players;
		*cast(ScriptString*)&params[16] = Title;
		*cast(ScriptString*)&params[28] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCustomPlayersUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool UnlockAvatarAward(ubyte LocalUserNum, int AvatarItemId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AvatarItemId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnlockAvatarAward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
