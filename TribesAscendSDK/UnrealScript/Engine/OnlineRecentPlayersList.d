module UnrealScript.Engine.OnlineRecentPlayersList;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineRecentPlayersList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineRecentPlayersList")); }
	private static __gshared OnlineRecentPlayersList mDefaultProperties;
	@property final static OnlineRecentPlayersList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineRecentPlayersList)("OnlineRecentPlayersList Engine.Default__OnlineRecentPlayersList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddPlayerToRecentPlayers;
			ScriptFunction mClearRecentPlayers;
			ScriptFunction mAddPartyToRecentParties;
			ScriptFunction mClearRecentParties;
			ScriptFunction mGetPlayersFromRecentParties;
			ScriptFunction mGetPlayersFromCurrentPlayers;
			ScriptFunction mGetSkillForCurrentPlayer;
			ScriptFunction mGetTeamForCurrentPlayer;
			ScriptFunction mSetLastParty;
			ScriptFunction mShowRecentPlayerList;
			ScriptFunction mShowRecentPartiesPlayerList;
			ScriptFunction mShowLastPartyPlayerList;
			ScriptFunction mShowCurrentPlayersList;
			ScriptFunction mSetCurrentPlayersList;
			ScriptFunction mGetCurrentPlayersListCount;
		}
		public @property static final
		{
			ScriptFunction AddPlayerToRecentPlayers() { return mAddPlayerToRecentPlayers ? mAddPlayerToRecentPlayers : (mAddPlayerToRecentPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.AddPlayerToRecentPlayers")); }
			ScriptFunction ClearRecentPlayers() { return mClearRecentPlayers ? mClearRecentPlayers : (mClearRecentPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ClearRecentPlayers")); }
			ScriptFunction AddPartyToRecentParties() { return mAddPartyToRecentParties ? mAddPartyToRecentParties : (mAddPartyToRecentParties = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.AddPartyToRecentParties")); }
			ScriptFunction ClearRecentParties() { return mClearRecentParties ? mClearRecentParties : (mClearRecentParties = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ClearRecentParties")); }
			ScriptFunction GetPlayersFromRecentParties() { return mGetPlayersFromRecentParties ? mGetPlayersFromRecentParties : (mGetPlayersFromRecentParties = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.GetPlayersFromRecentParties")); }
			ScriptFunction GetPlayersFromCurrentPlayers() { return mGetPlayersFromCurrentPlayers ? mGetPlayersFromCurrentPlayers : (mGetPlayersFromCurrentPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.GetPlayersFromCurrentPlayers")); }
			ScriptFunction GetSkillForCurrentPlayer() { return mGetSkillForCurrentPlayer ? mGetSkillForCurrentPlayer : (mGetSkillForCurrentPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.GetSkillForCurrentPlayer")); }
			ScriptFunction GetTeamForCurrentPlayer() { return mGetTeamForCurrentPlayer ? mGetTeamForCurrentPlayer : (mGetTeamForCurrentPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.GetTeamForCurrentPlayer")); }
			ScriptFunction SetLastParty() { return mSetLastParty ? mSetLastParty : (mSetLastParty = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.SetLastParty")); }
			ScriptFunction ShowRecentPlayerList() { return mShowRecentPlayerList ? mShowRecentPlayerList : (mShowRecentPlayerList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ShowRecentPlayerList")); }
			ScriptFunction ShowRecentPartiesPlayerList() { return mShowRecentPartiesPlayerList ? mShowRecentPartiesPlayerList : (mShowRecentPartiesPlayerList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ShowRecentPartiesPlayerList")); }
			ScriptFunction ShowLastPartyPlayerList() { return mShowLastPartyPlayerList ? mShowLastPartyPlayerList : (mShowLastPartyPlayerList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ShowLastPartyPlayerList")); }
			ScriptFunction ShowCurrentPlayersList() { return mShowCurrentPlayersList ? mShowCurrentPlayersList : (mShowCurrentPlayersList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.ShowCurrentPlayersList")); }
			ScriptFunction SetCurrentPlayersList() { return mSetCurrentPlayersList ? mSetCurrentPlayersList : (mSetCurrentPlayersList = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.SetCurrentPlayersList")); }
			ScriptFunction GetCurrentPlayersListCount() { return mGetCurrentPlayersListCount ? mGetCurrentPlayersListCount : (mGetCurrentPlayersListCount = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineRecentPlayersList.GetCurrentPlayersListCount")); }
		}
	}
	struct RecentParty
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineRecentPlayersList.RecentParty")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineRecentPlayersList.CurrentPlayerMet")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPlayerToRecentPlayers, params.ptr, cast(void*)0);
	}
	void ClearRecentPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRecentPlayers, cast(void*)0, cast(void*)0);
	}
	void AddPartyToRecentParties(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPartyToRecentParties, params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	void ClearRecentParties()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRecentParties, cast(void*)0, cast(void*)0);
	}
	void GetPlayersFromRecentParties(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayersFromRecentParties, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetPlayersFromCurrentPlayers(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayersFromCurrentPlayers, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetSkillForCurrentPlayer(OnlineSubsystem.UniqueNetId pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSkillForCurrentPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetTeamForCurrentPlayer(OnlineSubsystem.UniqueNetId pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamForCurrentPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void SetLastParty(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLastParty, params.ptr, cast(void*)0);
		*PartyMembers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	bool ShowRecentPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowRecentPlayerList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowRecentPartiesPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowRecentPartiesPlayerList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowLastPartyPlayerList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowLastPartyPlayerList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool ShowCurrentPlayersList(ubyte LocalUserNum, ScriptString Title, ScriptString Description)
	{
		ubyte params[32];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = Title;
		*cast(ScriptString*)&params[16] = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCurrentPlayersList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void SetCurrentPlayersList(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentPlayersList, params.ptr, cast(void*)0);
	}
	int GetCurrentPlayersListCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentPlayersListCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
