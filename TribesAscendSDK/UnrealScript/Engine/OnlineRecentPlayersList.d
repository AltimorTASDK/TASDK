module UnrealScript.Engine.OnlineRecentPlayersList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineRecentPlayersList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineRecentPlayersList")()); }
	private static __gshared OnlineRecentPlayersList mDefaultProperties;
	@property final static OnlineRecentPlayersList DefaultProperties() { mixin(MGDPC!(OnlineRecentPlayersList, "OnlineRecentPlayersList Engine.Default__OnlineRecentPlayersList")()); }
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
			ScriptFunction AddPlayerToRecentPlayers() { mixin(MGF!("mAddPlayerToRecentPlayers", "Function Engine.OnlineRecentPlayersList.AddPlayerToRecentPlayers")()); }
			ScriptFunction ClearRecentPlayers() { mixin(MGF!("mClearRecentPlayers", "Function Engine.OnlineRecentPlayersList.ClearRecentPlayers")()); }
			ScriptFunction AddPartyToRecentParties() { mixin(MGF!("mAddPartyToRecentParties", "Function Engine.OnlineRecentPlayersList.AddPartyToRecentParties")()); }
			ScriptFunction ClearRecentParties() { mixin(MGF!("mClearRecentParties", "Function Engine.OnlineRecentPlayersList.ClearRecentParties")()); }
			ScriptFunction GetPlayersFromRecentParties() { mixin(MGF!("mGetPlayersFromRecentParties", "Function Engine.OnlineRecentPlayersList.GetPlayersFromRecentParties")()); }
			ScriptFunction GetPlayersFromCurrentPlayers() { mixin(MGF!("mGetPlayersFromCurrentPlayers", "Function Engine.OnlineRecentPlayersList.GetPlayersFromCurrentPlayers")()); }
			ScriptFunction GetSkillForCurrentPlayer() { mixin(MGF!("mGetSkillForCurrentPlayer", "Function Engine.OnlineRecentPlayersList.GetSkillForCurrentPlayer")()); }
			ScriptFunction GetTeamForCurrentPlayer() { mixin(MGF!("mGetTeamForCurrentPlayer", "Function Engine.OnlineRecentPlayersList.GetTeamForCurrentPlayer")()); }
			ScriptFunction SetLastParty() { mixin(MGF!("mSetLastParty", "Function Engine.OnlineRecentPlayersList.SetLastParty")()); }
			ScriptFunction ShowRecentPlayerList() { mixin(MGF!("mShowRecentPlayerList", "Function Engine.OnlineRecentPlayersList.ShowRecentPlayerList")()); }
			ScriptFunction ShowRecentPartiesPlayerList() { mixin(MGF!("mShowRecentPartiesPlayerList", "Function Engine.OnlineRecentPlayersList.ShowRecentPartiesPlayerList")()); }
			ScriptFunction ShowLastPartyPlayerList() { mixin(MGF!("mShowLastPartyPlayerList", "Function Engine.OnlineRecentPlayersList.ShowLastPartyPlayerList")()); }
			ScriptFunction ShowCurrentPlayersList() { mixin(MGF!("mShowCurrentPlayersList", "Function Engine.OnlineRecentPlayersList.ShowCurrentPlayersList")()); }
			ScriptFunction SetCurrentPlayersList() { mixin(MGF!("mSetCurrentPlayersList", "Function Engine.OnlineRecentPlayersList.SetCurrentPlayersList")()); }
			ScriptFunction GetCurrentPlayersListCount() { mixin(MGF!("mGetCurrentPlayersListCount", "Function Engine.OnlineRecentPlayersList.GetCurrentPlayersListCount")()); }
		}
	}
	struct RecentParty
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineRecentPlayersList.RecentParty")()); }
		@property final auto ref
		{
			ScriptArray!(OnlineSubsystem.UniqueNetId) PartyMembers() { mixin(MGPS!("ScriptArray!(OnlineSubsystem.UniqueNetId)", 8)()); }
			OnlineSubsystem.UniqueNetId PartyLeader() { mixin(MGPS!("OnlineSubsystem.UniqueNetId", 0)()); }
		}
	}
	struct CurrentPlayerMet
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineRecentPlayersList.CurrentPlayerMet")()); }
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId NetId() { mixin(MGPS!("OnlineSubsystem.UniqueNetId", 8)()); }
			int Skill() { mixin(MGPS!("int", 4)()); }
			int TeamNum() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.UniqueNetId) RecentPlayers() { mixin(MGPC!("ScriptArray!(OnlineSubsystem.UniqueNetId)", 60)()); }
		ScriptArray!(OnlineRecentPlayersList.RecentParty) RecentParties() { mixin(MGPC!("ScriptArray!(OnlineRecentPlayersList.RecentParty)", 72)()); }
		ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) CurrentPlayers() { mixin(MGPC!("ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)", 120)()); }
		int RecentPartiesAddIndex() { mixin(MGPC!("int", 116)()); }
		int RecentPlayersAddIndex() { mixin(MGPC!("int", 112)()); }
		int MaxRecentParties() { mixin(MGPC!("int", 108)()); }
		int MaxRecentPlayers() { mixin(MGPC!("int", 104)()); }
		OnlineRecentPlayersList.RecentParty LastParty() { mixin(MGPC!("OnlineRecentPlayersList.RecentParty", 84)()); }
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
	void AddPartyToRecentParties(OnlineSubsystem.UniqueNetId PartyLeader, ref in ScriptArray!(OnlineSubsystem.UniqueNetId) PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPartyToRecentParties, params.ptr, cast(void*)0);
	}
	void ClearRecentParties()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRecentParties, cast(void*)0, cast(void*)0);
	}
	void GetPlayersFromRecentParties(ref ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayersFromRecentParties, params.ptr, cast(void*)0);
		Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetPlayersFromCurrentPlayers(ref ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayersFromCurrentPlayers, params.ptr, cast(void*)0);
		Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
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
	void SetLastParty(OnlineSubsystem.UniqueNetId PartyLeader, ref in ScriptArray!(OnlineSubsystem.UniqueNetId) PartyMembers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))PartyMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLastParty, params.ptr, cast(void*)0);
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
	void SetCurrentPlayersList(in ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet)*)params.ptr = cast(ScriptArray!(OnlineRecentPlayersList.CurrentPlayerMet))Players;
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
