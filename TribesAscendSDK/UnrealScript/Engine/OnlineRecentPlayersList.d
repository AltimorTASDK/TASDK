module UnrealScript.Engine.OnlineRecentPlayersList;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineRecentPlayersList : UObject
{
	struct RecentParty
	{
		public @property final auto ref ScriptArray!(OnlineSubsystem.UniqueNetId) PartyMembers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)&this + 8); }
		private ubyte __PartyMembers[12];
		public @property final auto ref OnlineSubsystem.UniqueNetId PartyLeader() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PartyLeader[8];
	}
	struct CurrentPlayerMet
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 8); }
		private ubyte __NetId[8];
		public @property final auto ref int Skill() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Skill[4];
		public @property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __TeamNum[4];
	}
	public @property final auto ref ScriptArray!(OnlineSubsystem.UniqueNetId) RecentPlayers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(OnlineRecentPlayersList.RecentParty) RecentParties() { return *cast(ScriptArray!(OnlineRecentPlayersList.RecentParty)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) CurrentPlayers() { return *cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int RecentPartiesAddIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int RecentPlayersAddIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int MaxRecentParties() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int MaxRecentPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref OnlineRecentPlayersList.RecentParty LastParty() { return *cast(OnlineRecentPlayersList.RecentParty*)(cast(size_t)cast(void*)this + 84); }
	final void AddPlayerToRecentPlayers(OnlineSubsystem.UniqueNetId NewPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22681], params.ptr, cast(void*)0);
	}
	final void ClearRecentPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22684], cast(void*)0, cast(void*)0);
	}
	final void AddPartyToRecentParties(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22685], params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	final void ClearRecentParties()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22690], cast(void*)0, cast(void*)0);
	}
	final void GetPlayersFromRecentParties(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22691], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	final void GetPlayersFromCurrentPlayers(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22697], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	final int GetSkillForCurrentPlayer(OnlineSubsystem.UniqueNetId Player)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22701], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetTeamForCurrentPlayer(OnlineSubsystem.UniqueNetId Player)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22705], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void SetLastParty(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22709], params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	final bool ShowRecentPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22713], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool ShowRecentPartiesPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22719], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool ShowLastPartyPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22727], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool ShowCurrentPlayersList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[29];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22733], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void SetCurrentPlayersList(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22741], params.ptr, cast(void*)0);
	}
	final int GetCurrentPlayersListCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22744], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
