module UnrealScript.Engine.OnlinePartyChatInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePartyChatInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlinePartyChatInterface")()); }
	private static __gshared OnlinePartyChatInterface mDefaultProperties;
	@property final static OnlinePartyChatInterface DefaultProperties() { mixin(MGDPC!(OnlinePartyChatInterface, "OnlinePartyChatInterface Engine.Default__OnlinePartyChatInterface")()); }
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
			ScriptFunction SendPartyGameInvites() { mixin(MGF!("mSendPartyGameInvites", "Function Engine.OnlinePartyChatInterface.SendPartyGameInvites")()); }
			ScriptFunction OnSendPartyGameInvitesComplete() { mixin(MGF!("mOnSendPartyGameInvitesComplete", "Function Engine.OnlinePartyChatInterface.OnSendPartyGameInvitesComplete")()); }
			ScriptFunction OnPartyMembersInfoChanged() { mixin(MGF!("mOnPartyMembersInfoChanged", "Function Engine.OnlinePartyChatInterface.OnPartyMembersInfoChanged")()); }
			ScriptFunction OnPartyMemberListChanged() { mixin(MGF!("mOnPartyMemberListChanged", "Function Engine.OnlinePartyChatInterface.OnPartyMemberListChanged")()); }
			ScriptFunction AddSendPartyGameInvitesCompleteDelegate() { mixin(MGF!("mAddSendPartyGameInvitesCompleteDelegate", "Function Engine.OnlinePartyChatInterface.AddSendPartyGameInvitesCompleteDelegate")()); }
			ScriptFunction ClearSendPartyGameInvitesCompleteDelegate() { mixin(MGF!("mClearSendPartyGameInvitesCompleteDelegate", "Function Engine.OnlinePartyChatInterface.ClearSendPartyGameInvitesCompleteDelegate")()); }
			ScriptFunction GetPartyMembersInformation() { mixin(MGF!("mGetPartyMembersInformation", "Function Engine.OnlinePartyChatInterface.GetPartyMembersInformation")()); }
			ScriptFunction GetPartyMemberInformation() { mixin(MGF!("mGetPartyMemberInformation", "Function Engine.OnlinePartyChatInterface.GetPartyMemberInformation")()); }
			ScriptFunction AddPartyMemberListChangedDelegate() { mixin(MGF!("mAddPartyMemberListChangedDelegate", "Function Engine.OnlinePartyChatInterface.AddPartyMemberListChangedDelegate")()); }
			ScriptFunction ClearPartyMemberListChangedDelegate() { mixin(MGF!("mClearPartyMemberListChangedDelegate", "Function Engine.OnlinePartyChatInterface.ClearPartyMemberListChangedDelegate")()); }
			ScriptFunction AddPartyMembersInfoChangedDelegate() { mixin(MGF!("mAddPartyMembersInfoChangedDelegate", "Function Engine.OnlinePartyChatInterface.AddPartyMembersInfoChangedDelegate")()); }
			ScriptFunction ClearPartyMembersInfoChangedDelegate() { mixin(MGF!("mClearPartyMembersInfoChangedDelegate", "Function Engine.OnlinePartyChatInterface.ClearPartyMembersInfoChangedDelegate")()); }
			ScriptFunction SetPartyMemberCustomData() { mixin(MGF!("mSetPartyMemberCustomData", "Function Engine.OnlinePartyChatInterface.SetPartyMemberCustomData")()); }
			ScriptFunction GetPartyBandwidth() { mixin(MGF!("mGetPartyBandwidth", "Function Engine.OnlinePartyChatInterface.GetPartyBandwidth")()); }
			ScriptFunction ShowPartyUI() { mixin(MGF!("mShowPartyUI", "Function Engine.OnlinePartyChatInterface.ShowPartyUI")()); }
			ScriptFunction ShowVoiceChannelUI() { mixin(MGF!("mShowVoiceChannelUI", "Function Engine.OnlinePartyChatInterface.ShowVoiceChannelUI")()); }
			ScriptFunction ShowCommunitySessionsUI() { mixin(MGF!("mShowCommunitySessionsUI", "Function Engine.OnlinePartyChatInterface.ShowCommunitySessionsUI")()); }
			ScriptFunction IsInPartyChat() { mixin(MGF!("mIsInPartyChat", "Function Engine.OnlinePartyChatInterface.IsInPartyChat")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPartyMembersInfoChanged__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnPartyMemberListChanged__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnSendPartyGameInvitesComplete__Delegate'!
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
	bool GetPartyMembersInformation(ref ScriptArray!(OnlineSubsystem.OnlinePartyMember) PartyMembers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr = PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyMembersInformation, params.ptr, cast(void*)0);
		PartyMembers = *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool GetPartyMemberInformation(OnlineSubsystem.UniqueNetId MemberId, ref OnlineSubsystem.OnlinePartyMember PartyMember)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = MemberId;
		*cast(OnlineSubsystem.OnlinePartyMember*)&params[8] = PartyMember;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyMemberInformation, params.ptr, cast(void*)0);
		PartyMember = *cast(OnlineSubsystem.OnlinePartyMember*)&params[8];
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
