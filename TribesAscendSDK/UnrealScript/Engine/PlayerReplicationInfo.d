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
public extern(D):
	struct AutomatedTestingDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int NumberOfMatchesPlayed() { return *cast(int*)(cast(size_t)&this + 0); }
			int NumMapListCyclesDone() { return *cast(int*)(cast(size_t)&this + 4); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
			int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 580); }
			TeamInfo Team() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 520); }
			ScriptName SessionName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 588); }
			float ExactPing() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			ubyte Ping() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 484); }
			float Score() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			PlayerReplicationInfo.AutomatedTestingDatum AutomatedTestingData() { return *cast(PlayerReplicationInfo.AutomatedTestingDatum*)(cast(size_t)cast(void*)this + 596); }
			int StartTime() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
			ScriptString SavedNetworkAddress() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 568); }
			int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
			ScriptString OldName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
			Texture2D Avatar() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 648); }
			int StatAvgOutBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
			int StatMaxOutBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
			int StatAvgInBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			int StatMaxInBPS() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
			int StatPKLMax() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
			int StatPKLMin() { return *cast(int*)(cast(size_t)cast(void*)this + 624); }
			int StatPKLTotal() { return *cast(int*)(cast(size_t)cast(void*)this + 620); }
			int StatPingMax() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
			int StatPingMin() { return *cast(int*)(cast(size_t)cast(void*)this + 612); }
			int StatPingTotals() { return *cast(int*)(cast(size_t)cast(void*)this + 608); }
			int StatConnectionCounts() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
			ScriptClass GameMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 560); }
			ScriptString StringUnknown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 544); }
			ScriptString StringSpectating() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 532); }
			int NumLives() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			AudioDevice.ETTSSpeaker TTSSpeaker() { return *cast(AudioDevice.ETTSSpeaker*)(cast(size_t)cast(void*)this + 485); }
			int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bAdmin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
		bool bAdmin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
		bool bOnlySpectator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x4) != 0; }
		bool bOnlySpectator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x4; } return val; }
		bool bIsSpectator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x2) != 0; }
		bool bIsSpectator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x2; } return val; }
		bool bReadyToPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x10) != 0; }
		bool bReadyToPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x10; } return val; }
		bool bOutOfLives() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x20) != 0; }
		bool bOutOfLives(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x20; } return val; }
		bool bWaitingPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x8) != 0; }
		bool bWaitingPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x8; } return val; }
		bool bFromPreviousLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x200) != 0; }
		bool bFromPreviousLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x200; } return val; }
		bool bIsInactive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x100) != 0; }
		bool bIsInactive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x100; } return val; }
		bool bHasBeenWelcomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x80) != 0; }
		bool bHasBeenWelcomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x80; } return val; }
		bool bBot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x40) != 0; }
		bool bBot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x40; } return val; }
	}
final:
	PlayerReplicationInfo Duplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17276], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)params.ptr;
	}
	void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24596], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24598], cast(void*)0, cast(void*)0);
	}
	void ClientInitialize(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24599], params.ptr, cast(void*)0);
	}
	void SetPlayerTeam(TeamInfo NewTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24603], params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24605], params.ptr, cast(void*)0);
	}
	bool ShouldBroadCastWelcomeMessage(bool bExiting)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bExiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24612], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24615], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24618], cast(void*)0, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24619], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, float* YL, float* YPos)
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
	void SetPlayerName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24627], params.ptr, cast(void*)0);
	}
	void SetWaitingPlayer(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24629], params.ptr, cast(void*)0);
	}
	void OverrideWith(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24632], params.ptr, cast(void*)0);
	}
	void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24634], params.ptr, cast(void*)0);
	}
	void IncrementDeaths(int Amt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24636], params.ptr, cast(void*)0);
	}
	void SeamlessTravelTo(PlayerReplicationInfo NewPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24638], params.ptr, cast(void*)0);
	}
	void SetUniqueId(OnlineSubsystem.UniqueNetId PlayerUniqueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerUniqueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24640], params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24642], params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsInvalidName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24644], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterPlayerWithSession()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24650], cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerFromSession()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24653], cast(void*)0, cast(void*)0);
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24656], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
