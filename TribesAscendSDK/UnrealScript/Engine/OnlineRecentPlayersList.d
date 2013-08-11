module UnrealScript.Engine.OnlineRecentPlayersList;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineRecentPlayersList : UObject
{
public extern(D):
	struct RecentParty
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(OnlineSubsystem.UniqueNetId) PartyMembers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)&this + 8); }
			OnlineSubsystem.UniqueNetId PartyLeader() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		}
	}
	struct CurrentPlayerMet
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 8); }
			int Skill() { return *cast(int*)(cast(size_t)&this + 4); }
			int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.UniqueNetId) RecentPlayers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(OnlineRecentPlayersList.RecentParty) RecentParties() { return *cast(ScriptArray!(OnlineRecentPlayersList.RecentParty)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) CurrentPlayers() { return *cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)(cast(size_t)cast(void*)this + 120); }
		int RecentPartiesAddIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
		int RecentPlayersAddIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int MaxRecentParties() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int MaxRecentPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		OnlineRecentPlayersList.RecentParty LastParty() { return *cast(OnlineRecentPlayersList.RecentParty*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	void AddPlayerToRecentPlayers(OnlineSubsystem.UniqueNetId NewPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22681], params.ptr, cast(void*)0);
	}
	void ClearRecentPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22684], cast(void*)0, cast(void*)0);
	}
	void AddPartyToRecentParties(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22685], params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	void ClearRecentParties()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22690], cast(void*)0, cast(void*)0);
	}
	void GetPlayersFromRecentParties(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22691], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetPlayersFromCurrentPlayers(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22697], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetSkillForCurrentPlayer(OnlineSubsystem.UniqueNetId pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22701], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetTeamForCurrentPlayer(OnlineSubsystem.UniqueNetId pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22705], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void SetLastParty(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22709], params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	bool ShowRecentPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22713], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowRecentPartiesPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22719], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowLastPartyPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22727], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowCurrentPlayersList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22733], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void SetCurrentPlayersList(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22741], params.ptr, cast(void*)0);
	}
	int GetCurrentPlayersListCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22744], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
