module UnrealScript.Engine.OnlinePlayerInterfaceEx;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePlayerInterfaceEx : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlinePlayerInterfaceEx")); }
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
			ScriptFunction ShowFeedbackUI() { return mShowFeedbackUI ? mShowFeedbackUI : (mShowFeedbackUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowFeedbackUI")); }
			ScriptFunction ShowGamerCardUI() { return mShowGamerCardUI ? mShowGamerCardUI : (mShowGamerCardUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowGamerCardUI")); }
			ScriptFunction ShowMessagesUI() { return mShowMessagesUI ? mShowMessagesUI : (mShowMessagesUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowMessagesUI")); }
			ScriptFunction ShowAchievementsUI() { return mShowAchievementsUI ? mShowAchievementsUI : (mShowAchievementsUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowAchievementsUI")); }
			ScriptFunction ShowInviteUI() { return mShowInviteUI ? mShowInviteUI : (mShowInviteUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowInviteUI")); }
			ScriptFunction ShowContentMarketplaceUI() { return mShowContentMarketplaceUI ? mShowContentMarketplaceUI : (mShowContentMarketplaceUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowContentMarketplaceUI")); }
			ScriptFunction ShowMembershipMarketplaceUI() { return mShowMembershipMarketplaceUI ? mShowMembershipMarketplaceUI : (mShowMembershipMarketplaceUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowMembershipMarketplaceUI")); }
			ScriptFunction ShowDeviceSelectionUI() { return mShowDeviceSelectionUI ? mShowDeviceSelectionUI : (mShowDeviceSelectionUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowDeviceSelectionUI")); }
			ScriptFunction OnDeviceSelectionComplete() { return mOnDeviceSelectionComplete ? mOnDeviceSelectionComplete : (mOnDeviceSelectionComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.OnDeviceSelectionComplete")); }
			ScriptFunction OnProfileDataChanged() { return mOnProfileDataChanged ? mOnProfileDataChanged : (mOnProfileDataChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.OnProfileDataChanged")); }
			ScriptFunction AddDeviceSelectionDoneDelegate() { return mAddDeviceSelectionDoneDelegate ? mAddDeviceSelectionDoneDelegate : (mAddDeviceSelectionDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.AddDeviceSelectionDoneDelegate")); }
			ScriptFunction ClearDeviceSelectionDoneDelegate() { return mClearDeviceSelectionDoneDelegate ? mClearDeviceSelectionDoneDelegate : (mClearDeviceSelectionDoneDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ClearDeviceSelectionDoneDelegate")); }
			ScriptFunction GetDeviceSelectionResults() { return mGetDeviceSelectionResults ? mGetDeviceSelectionResults : (mGetDeviceSelectionResults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.GetDeviceSelectionResults")); }
			ScriptFunction IsDeviceValid() { return mIsDeviceValid ? mIsDeviceValid : (mIsDeviceValid = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.IsDeviceValid")); }
			ScriptFunction UnlockGamerPicture() { return mUnlockGamerPicture ? mUnlockGamerPicture : (mUnlockGamerPicture = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.UnlockGamerPicture")); }
			ScriptFunction AddProfileDataChangedDelegate() { return mAddProfileDataChangedDelegate ? mAddProfileDataChangedDelegate : (mAddProfileDataChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.AddProfileDataChangedDelegate")); }
			ScriptFunction ClearProfileDataChangedDelegate() { return mClearProfileDataChangedDelegate ? mClearProfileDataChangedDelegate : (mClearProfileDataChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ClearProfileDataChangedDelegate")); }
			ScriptFunction ShowFriendsInviteUI() { return mShowFriendsInviteUI ? mShowFriendsInviteUI : (mShowFriendsInviteUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowFriendsInviteUI")); }
			ScriptFunction ShowPlayersUI() { return mShowPlayersUI ? mShowPlayersUI : (mShowPlayersUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowPlayersUI")); }
			ScriptFunction ShowCustomPlayersUI() { return mShowCustomPlayersUI ? mShowCustomPlayersUI : (mShowCustomPlayersUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.ShowCustomPlayersUI")); }
			ScriptFunction UnlockAvatarAward() { return mUnlockAvatarAward ? mUnlockAvatarAward : (mUnlockAvatarAward = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePlayerInterfaceEx.UnlockAvatarAward")); }
		}
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
	bool ShowInviteUI(ubyte LocalUserNum, ScriptString InviteText)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviteText;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowInviteUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ShowContentMarketplaceUI(ubyte LocalUserNum, int CategoryMask, int OfferId)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = CategoryMask;
		*cast(int*)&params[8] = OfferId;
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
	bool ShowDeviceSelectionUI(ubyte LocalUserNum, int SizeNeeded, bool bManageStorage)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = SizeNeeded;
		*cast(bool*)&params[8] = bManageStorage;
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
	int GetDeviceSelectionResults(ubyte LocalUserNum, ScriptString* DeviceName)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = *DeviceName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceSelectionResults, params.ptr, cast(void*)0);
		*DeviceName = *cast(ScriptString*)&params[4];
		return *cast(int*)&params[16];
	}
	bool IsDeviceValid(int DeviceID, int SizeNeeded)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = DeviceID;
		*cast(int*)&params[4] = SizeNeeded;
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
	bool ShowCustomPlayersUI(ubyte LocalUserNum, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players, ScriptString Title, ScriptString Description)
	{
		ubyte params[44];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = *Players;
		*cast(ScriptString*)&params[16] = Title;
		*cast(ScriptString*)&params[28] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCustomPlayersUI, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4];
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
