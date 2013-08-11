module UnrealScript.Engine.PlayerReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.Engine.HUD;

extern(C++) interface PlayerReplicationInfo : ReplicationInfo
{
	struct AutomatedTestingDatum
	{
		public @property final auto ref int NumberOfMatchesPlayed() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NumberOfMatchesPlayed[4];
		public @property final auto ref int NumMapListCyclesDone() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __NumMapListCyclesDone[4];
	}
	public @property final bool bAdmin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
	public @property final bool bAdmin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 580); }
	public @property final bool bOnlySpectator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x4) != 0; }
	public @property final bool bOnlySpectator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x4; } return val; }
	public @property final auto ref TeamInfo Team() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptName SessionName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float ExactPing() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref ubyte Ping() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bIsSpectator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x2) != 0; }
	public @property final bool bIsSpectator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x2; } return val; }
	public @property final bool bReadyToPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x10) != 0; }
	public @property final bool bReadyToPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x10; } return val; }
	public @property final bool bOutOfLives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x20) != 0; }
	public @property final bool bOutOfLives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x20; } return val; }
	public @property final auto ref float Score() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref PlayerReplicationInfo.AutomatedTestingDatum AutomatedTestingData() { return *cast(PlayerReplicationInfo.AutomatedTestingDatum*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref int StartTime() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptString SavedNetworkAddress() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 568); }
	public @property final bool bWaitingPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x8) != 0; }
	public @property final bool bWaitingPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x8; } return val; }
	public @property final auto ref int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
	public @property final bool bFromPreviousLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x200) != 0; }
	public @property final bool bFromPreviousLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x200; } return val; }
	public @property final bool bIsInactive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x100) != 0; }
	public @property final bool bIsInactive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x100; } return val; }
	public @property final auto ref ScriptString OldName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref Texture2D Avatar() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref int StatAvgOutBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref int StatMaxOutBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref int StatAvgInBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref int StatMaxInBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref int StatPKLMax() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref int StatPKLMin() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref int StatPKLTotal() { return *cast(int*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref int StatPingMax() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref int StatPingMin() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref int StatPingTotals() { return *cast(int*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref int StatConnectionCounts() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref ScriptClass GameMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref ScriptString StringUnknown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ScriptString StringSpectating() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 532); }
	public @property final bool bHasBeenWelcomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x80) != 0; }
	public @property final bool bHasBeenWelcomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x80; } return val; }
	public @property final bool bBot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x40) != 0; }
	public @property final bool bBot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x40; } return val; }
	public @property final auto ref int NumLives() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref AudioDevice.ETTSSpeaker TTSSpeaker() { return *cast(AudioDevice.ETTSSpeaker*)(cast(size_t)cast(void*)this + 485); }
	public @property final auto ref int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	final PlayerReplicationInfo Duplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17276], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)params.ptr;
	}
	final void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24596], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24598], cast(void*)0, cast(void*)0);
	}
	final void ClientInitialize(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24599], params.ptr, cast(void*)0);
	}
	final void SetPlayerTeam(TeamInfo NewTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24603], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24605], params.ptr, cast(void*)0);
	}
	final bool ShouldBroadCastWelcomeMessage(bool bExiting)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bExiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24612], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24615], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24618], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24619], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24621], params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	final void SetPlayerName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24627], params.ptr, cast(void*)0);
	}
	final void SetWaitingPlayer(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24629], params.ptr, cast(void*)0);
	}
	final void OverrideWith(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24632], params.ptr, cast(void*)0);
	}
	final void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24634], params.ptr, cast(void*)0);
	}
	final void IncrementDeaths(int Amt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24636], params.ptr, cast(void*)0);
	}
	final void SeamlessTravelTo(PlayerReplicationInfo NewPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24638], params.ptr, cast(void*)0);
	}
	final void SetUniqueId(OnlineSubsystem.UniqueNetId PlayerUniqueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerUniqueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24640], params.ptr, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24642], params.ptr, cast(void*)0);
		return params[0];
	}
	final bool IsInvalidName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24644], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RegisterPlayerWithSession()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24650], cast(void*)0, cast(void*)0);
	}
	final void UnregisterPlayerFromSession()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24653], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24656], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
