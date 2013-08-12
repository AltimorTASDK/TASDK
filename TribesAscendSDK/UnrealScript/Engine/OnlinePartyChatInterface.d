module UnrealScript.Engine.OnlinePartyChatInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePartyChatInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlinePartyChatInterface")); }
	private static __gshared OnlinePartyChatInterface mDefaultProperties;
	@property final static OnlinePartyChatInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlinePartyChatInterface)("OnlinePartyChatInterface Engine.Default__OnlinePartyChatInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSendPartyGameInvites;
			ScriptFunction mOnSendPartyGameInvitesComplete;
			ScriptFunction mOnPartyMembersInfoChanged;
			ScriptFunction mOnPartyMemberListChanged;
			ScriptFunction mAddSendPartyGameInvitesCompleteDelegate;
			ScriptFunction mClearSendPartyGameInvitesCompleteDelegate;
			ScriptFunction mGetPartyMembersInformation;
			ScriptFunction mGetPartyMemberInformation;
			ScriptFunction mAddPartyMemberListChangedDelegate;
			ScriptFunction mClearPartyMemberListChangedDelegate;
			ScriptFunction mAddPartyMembersInfoChangedDelegate;
			ScriptFunction mClearPartyMembersInfoChangedDelegate;
			ScriptFunction mSetPartyMemberCustomData;
			ScriptFunction mGetPartyBandwidth;
			ScriptFunction mShowPartyUI;
			ScriptFunction mShowVoiceChannelUI;
			ScriptFunction mShowCommunitySessionsUI;
			ScriptFunction mIsInPartyChat;
		}
		public @property static final
		{
			ScriptFunction SendPartyGameInvites() { return mSendPartyGameInvites ? mSendPartyGameInvites : (mSendPartyGameInvites = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.SendPartyGameInvites")); }
			ScriptFunction OnSendPartyGameInvitesComplete() { return mOnSendPartyGameInvitesComplete ? mOnSendPartyGameInvitesComplete : (mOnSendPartyGameInvitesComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.OnSendPartyGameInvitesComplete")); }
			ScriptFunction OnPartyMembersInfoChanged() { return mOnPartyMembersInfoChanged ? mOnPartyMembersInfoChanged : (mOnPartyMembersInfoChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.OnPartyMembersInfoChanged")); }
			ScriptFunction OnPartyMemberListChanged() { return mOnPartyMemberListChanged ? mOnPartyMemberListChanged : (mOnPartyMemberListChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.OnPartyMemberListChanged")); }
			ScriptFunction AddSendPartyGameInvitesCompleteDelegate() { return mAddSendPartyGameInvitesCompleteDelegate ? mAddSendPartyGameInvitesCompleteDelegate : (mAddSendPartyGameInvitesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.AddSendPartyGameInvitesCompleteDelegate")); }
			ScriptFunction ClearSendPartyGameInvitesCompleteDelegate() { return mClearSendPartyGameInvitesCompleteDelegate ? mClearSendPartyGameInvitesCompleteDelegate : (mClearSendPartyGameInvitesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ClearSendPartyGameInvitesCompleteDelegate")); }
			ScriptFunction GetPartyMembersInformation() { return mGetPartyMembersInformation ? mGetPartyMembersInformation : (mGetPartyMembersInformation = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.GetPartyMembersInformation")); }
			ScriptFunction GetPartyMemberInformation() { return mGetPartyMemberInformation ? mGetPartyMemberInformation : (mGetPartyMemberInformation = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.GetPartyMemberInformation")); }
			ScriptFunction AddPartyMemberListChangedDelegate() { return mAddPartyMemberListChangedDelegate ? mAddPartyMemberListChangedDelegate : (mAddPartyMemberListChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.AddPartyMemberListChangedDelegate")); }
			ScriptFunction ClearPartyMemberListChangedDelegate() { return mClearPartyMemberListChangedDelegate ? mClearPartyMemberListChangedDelegate : (mClearPartyMemberListChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ClearPartyMemberListChangedDelegate")); }
			ScriptFunction AddPartyMembersInfoChangedDelegate() { return mAddPartyMembersInfoChangedDelegate ? mAddPartyMembersInfoChangedDelegate : (mAddPartyMembersInfoChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.AddPartyMembersInfoChangedDelegate")); }
			ScriptFunction ClearPartyMembersInfoChangedDelegate() { return mClearPartyMembersInfoChangedDelegate ? mClearPartyMembersInfoChangedDelegate : (mClearPartyMembersInfoChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ClearPartyMembersInfoChangedDelegate")); }
			ScriptFunction SetPartyMemberCustomData() { return mSetPartyMemberCustomData ? mSetPartyMemberCustomData : (mSetPartyMemberCustomData = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.SetPartyMemberCustomData")); }
			ScriptFunction GetPartyBandwidth() { return mGetPartyBandwidth ? mGetPartyBandwidth : (mGetPartyBandwidth = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.GetPartyBandwidth")); }
			ScriptFunction ShowPartyUI() { return mShowPartyUI ? mShowPartyUI : (mShowPartyUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ShowPartyUI")); }
			ScriptFunction ShowVoiceChannelUI() { return mShowVoiceChannelUI ? mShowVoiceChannelUI : (mShowVoiceChannelUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ShowVoiceChannelUI")); }
			ScriptFunction ShowCommunitySessionsUI() { return mShowCommunitySessionsUI ? mShowCommunitySessionsUI : (mShowCommunitySessionsUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.ShowCommunitySessionsUI")); }
			ScriptFunction IsInPartyChat() { return mIsInPartyChat ? mIsInPartyChat : (mIsInPartyChat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlinePartyChatInterface.IsInPartyChat")); }
		}
	}
final:
	bool SendPartyGameInvites(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPartyGameInvites, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnSendPartyGameInvitesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSendPartyGameInvitesComplete, params.ptr, cast(void*)0);
	}
	void OnPartyMembersInfoChanged(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID, int CustomData1, int CustomData2, int CustomData3, int CustomData4)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		*cast(int*)&params[20] = CustomData1;
		*cast(int*)&params[24] = CustomData2;
		*cast(int*)&params[28] = CustomData3;
		*cast(int*)&params[32] = CustomData4;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPartyMembersInfoChanged, params.ptr, cast(void*)0);
	}
	void OnPartyMemberListChanged(bool bJoinedOrLeft, ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bJoinedOrLeft;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[16] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPartyMemberListChanged, params.ptr, cast(void*)0);
	}
	void AddSendPartyGameInvitesCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* SendPartyGameInvitesCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = SendPartyGameInvitesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSendPartyGameInvitesCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearSendPartyGameInvitesCompleteDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* SendPartyGameInvitesCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = SendPartyGameInvitesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSendPartyGameInvitesCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool GetPartyMembersInformation(ScriptArray!(OnlineSubsystem.OnlinePartyMember)* PartyMembers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyMembersInformation, params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool GetPartyMemberInformation(OnlineSubsystem.UniqueNetId MemberId, OnlineSubsystem.OnlinePartyMember* PartyMember)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = MemberId;
		*cast(OnlineSubsystem.OnlinePartyMember*)&params[8] = *PartyMember;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyMemberInformation, params.ptr, cast(void*)0);
		*PartyMember = *cast(OnlineSubsystem.OnlinePartyMember*)&params[8];
		return *cast(bool*)&params[64];
	}
	void AddPartyMemberListChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* PartyMemberListChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = PartyMemberListChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPartyMemberListChangedDelegate, params.ptr, cast(void*)0);
	}
	void ClearPartyMemberListChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* PartyMemberListChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = PartyMemberListChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPartyMemberListChangedDelegate, params.ptr, cast(void*)0);
	}
	void AddPartyMembersInfoChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* PartyMembersInfoChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = PartyMembersInfoChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPartyMembersInfoChangedDelegate, params.ptr, cast(void*)0);
	}
	void ClearPartyMembersInfoChangedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* PartyMembersInfoChangedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = PartyMembersInfoChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPartyMembersInfoChangedDelegate, params.ptr, cast(void*)0);
	}
	bool SetPartyMemberCustomData(ubyte LocalUserNum, int Data1, int Data2, int Data3, int Data4)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = Data1;
		*cast(int*)&params[8] = Data2;
		*cast(int*)&params[12] = Data3;
		*cast(int*)&params[16] = Data4;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPartyMemberCustomData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetPartyBandwidth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyBandwidth, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool ShowPartyUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPartyUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowVoiceChannelUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowVoiceChannelUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowCommunitySessionsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCommunitySessionsUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsInPartyChat(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInPartyChat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
