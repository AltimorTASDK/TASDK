module UnrealScript.Engine.OnlinePartyChatInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlinePartyChatInterface : UInterface
{
public extern(D):
final:
	bool SendPartyGameInvites(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21882], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnSendPartyGameInvitesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21885], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21888], params.ptr, cast(void*)0);
	}
	void OnPartyMemberListChanged(bool bJoinedOrLeft, ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bJoinedOrLeft;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[16] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21890], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21892], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21895], params.ptr, cast(void*)0);
	}
	bool GetPartyMembersInformation(ScriptArray!(OnlineSubsystem.OnlinePartyMember)* PartyMembers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21898], params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.OnlinePartyMember)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool GetPartyMemberInformation(OnlineSubsystem.UniqueNetId MemberId, OnlineSubsystem.OnlinePartyMember* PartyMember)
	{
		ubyte params[68];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = MemberId;
		*cast(OnlineSubsystem.OnlinePartyMember*)&params[8] = *PartyMember;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21902], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21909], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21912], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21921], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21924], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21927], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	int GetPartyBandwidth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21934], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool ShowPartyUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21936], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowVoiceChannelUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21939], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowCommunitySessionsUI(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21942], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsInPartyChat(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21945], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
