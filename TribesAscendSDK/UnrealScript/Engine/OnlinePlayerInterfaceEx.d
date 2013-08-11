module UnrealScript.Engine.OnlinePlayerInterfaceEx;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePlayerInterfaceEx : UInterface
{
public extern(D):
final:
	bool ShowFeedbackUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22318], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowGamerCardUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22322], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowMessagesUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22326], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowAchievementsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22329], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowInviteUI(ubyte LocalUserNum, ScriptString InviteText)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviteText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22332], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ShowContentMarketplaceUI(ubyte LocalUserNum, int CategoryMask, int OfferId)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = CategoryMask;
		*cast(int*)&params[8] = OfferId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22336], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowMembershipMarketplaceUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22341], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowDeviceSelectionUI(ubyte LocalUserNum, int SizeNeeded, bool bManageStorage)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = SizeNeeded;
		*cast(bool*)&params[8] = bManageStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22344], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnDeviceSelectionComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22349], params.ptr, cast(void*)0);
	}
	void OnProfileDataChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22352], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22354], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22357], params.ptr, cast(void*)0);
	}
	int GetDeviceSelectionResults(ubyte LocalUserNum, ScriptString* DeviceName)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = *DeviceName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22360], params.ptr, cast(void*)0);
		*DeviceName = *cast(ScriptString*)&params[4];
		return *cast(int*)&params[16];
	}
	bool IsDeviceValid(int DeviceID, int SizeNeeded)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = DeviceID;
		*cast(int*)&params[4] = SizeNeeded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22364], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnlockGamerPicture(ubyte LocalUserNum, int PictureId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = PictureId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22368], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22372], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22375], params.ptr, cast(void*)0);
	}
	bool ShowFriendsInviteUI(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22378], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ShowPlayersUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22382], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22385], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4];
		return *cast(bool*)&params[40];
	}
	bool UnlockAvatarAward(ubyte LocalUserNum, int AvatarItemId)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = AvatarItemId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22392], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
