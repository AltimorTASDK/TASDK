module UnrealScript.Engine.PlayerReplicationInfo;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PlayerReplicationInfo")()); }
	private static __gshared PlayerReplicationInfo mDefaultProperties;
	@property final static PlayerReplicationInfo DefaultProperties() { mixin(MGDPC!(PlayerReplicationInfo, "PlayerReplicationInfo Engine.Default__PlayerReplicationInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDuplicate;
			ScriptFunction mUpdatePing;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mClientInitialize;
			ScriptFunction mSetPlayerTeam;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mShouldBroadCastWelcomeMessage;
			ScriptFunction mDestroyed;
			ScriptFunction mReset;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetPlayerName;
			ScriptFunction mSetWaitingPlayer;
			ScriptFunction mOverrideWith;
			ScriptFunction mCopyProperties;
			ScriptFunction mIncrementDeaths;
			ScriptFunction mSeamlessTravelTo;
			ScriptFunction mSetUniqueId;
			ScriptFunction mGetTeamNum;
			ScriptFunction mIsInvalidName;
			ScriptFunction mRegisterPlayerWithSession;
			ScriptFunction mUnregisterPlayerFromSession;
			ScriptFunction mGetSpectatorName;
		}
		public @property static final
		{
			ScriptFunction Duplicate() { mixin(MGF!("mDuplicate", "Function Engine.PlayerReplicationInfo.Duplicate")()); }
			ScriptFunction UpdatePing() { mixin(MGF!("mUpdatePing", "Function Engine.PlayerReplicationInfo.UpdatePing")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.PlayerReplicationInfo.PostBeginPlay")()); }
			ScriptFunction ClientInitialize() { mixin(MGF!("mClientInitialize", "Function Engine.PlayerReplicationInfo.ClientInitialize")()); }
			ScriptFunction SetPlayerTeam() { mixin(MGF!("mSetPlayerTeam", "Function Engine.PlayerReplicationInfo.SetPlayerTeam")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.PlayerReplicationInfo.ReplicatedEvent")()); }
			ScriptFunction ShouldBroadCastWelcomeMessage() { mixin(MGF!("mShouldBroadCastWelcomeMessage", "Function Engine.PlayerReplicationInfo.ShouldBroadCastWelcomeMessage")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.PlayerReplicationInfo.Destroyed")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.PlayerReplicationInfo.Reset")()); }
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function Engine.PlayerReplicationInfo.GetHumanReadableName")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.PlayerReplicationInfo.DisplayDebug")()); }
			ScriptFunction SetPlayerName() { mixin(MGF!("mSetPlayerName", "Function Engine.PlayerReplicationInfo.SetPlayerName")()); }
			ScriptFunction SetWaitingPlayer() { mixin(MGF!("mSetWaitingPlayer", "Function Engine.PlayerReplicationInfo.SetWaitingPlayer")()); }
			ScriptFunction OverrideWith() { mixin(MGF!("mOverrideWith", "Function Engine.PlayerReplicationInfo.OverrideWith")()); }
			ScriptFunction CopyProperties() { mixin(MGF!("mCopyProperties", "Function Engine.PlayerReplicationInfo.CopyProperties")()); }
			ScriptFunction IncrementDeaths() { mixin(MGF!("mIncrementDeaths", "Function Engine.PlayerReplicationInfo.IncrementDeaths")()); }
			ScriptFunction SeamlessTravelTo() { mixin(MGF!("mSeamlessTravelTo", "Function Engine.PlayerReplicationInfo.SeamlessTravelTo")()); }
			ScriptFunction SetUniqueId() { mixin(MGF!("mSetUniqueId", "Function Engine.PlayerReplicationInfo.SetUniqueId")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function Engine.PlayerReplicationInfo.GetTeamNum")()); }
			ScriptFunction IsInvalidName() { mixin(MGF!("mIsInvalidName", "Function Engine.PlayerReplicationInfo.IsInvalidName")()); }
			ScriptFunction RegisterPlayerWithSession() { mixin(MGF!("mRegisterPlayerWithSession", "Function Engine.PlayerReplicationInfo.RegisterPlayerWithSession")()); }
			ScriptFunction UnregisterPlayerFromSession() { mixin(MGF!("mUnregisterPlayerFromSession", "Function Engine.PlayerReplicationInfo.UnregisterPlayerFromSession")()); }
			ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function Engine.PlayerReplicationInfo.GetSpectatorName")()); }
		}
	}
	struct AutomatedTestingDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PlayerReplicationInfo.AutomatedTestingDatum")()); }
		@property final auto ref
		{
			int NumberOfMatchesPlayed() { mixin(MGPS!("int", 0)()); }
			int NumMapListCyclesDone() { mixin(MGPS!("int", 4)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString PlayerName() { mixin(MGPC!("ScriptString", 492)()); }
			int PlayerID() { mixin(MGPC!("int", 516)()); }
			OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPC!("OnlineSubsystem.UniqueNetId", 580)()); }
			TeamInfo Team() { mixin(MGPC!("TeamInfo", 520)()); }
			ScriptName SessionName() { mixin(MGPC!("ScriptName", 588)()); }
			float ExactPing() { mixin(MGPC!("float", 564)()); }
			ubyte Ping() { mixin(MGPC!("ubyte", 484)()); }
			float Score() { mixin(MGPC!("float", 476)()); }
			PlayerReplicationInfo.AutomatedTestingDatum AutomatedTestingData() { mixin(MGPC!("PlayerReplicationInfo.AutomatedTestingDatum", 596)()); }
			int StartTime() { mixin(MGPC!("int", 528)()); }
			ScriptString SavedNetworkAddress() { mixin(MGPC!("ScriptString", 568)()); }
			int Kills() { mixin(MGPC!("int", 556)()); }
			ScriptString OldName() { mixin(MGPC!("ScriptString", 504)()); }
			Texture2D Avatar() { mixin(MGPC!("Texture2D", 648)()); }
			int StatAvgOutBPS() { mixin(MGPC!("int", 644)()); }
			int StatMaxOutBPS() { mixin(MGPC!("int", 640)()); }
			int StatAvgInBPS() { mixin(MGPC!("int", 636)()); }
			int StatMaxInBPS() { mixin(MGPC!("int", 632)()); }
			int StatPKLMax() { mixin(MGPC!("int", 628)()); }
			int StatPKLMin() { mixin(MGPC!("int", 624)()); }
			int StatPKLTotal() { mixin(MGPC!("int", 620)()); }
			int StatPingMax() { mixin(MGPC!("int", 616)()); }
			int StatPingMin() { mixin(MGPC!("int", 612)()); }
			int StatPingTotals() { mixin(MGPC!("int", 608)()); }
			int StatConnectionCounts() { mixin(MGPC!("int", 604)()); }
			ScriptClass GameMessageClass() { mixin(MGPC!("ScriptClass", 560)()); }
			ScriptString StringUnknown() { mixin(MGPC!("ScriptString", 544)()); }
			ScriptString StringSpectating() { mixin(MGPC!("ScriptString", 532)()); }
			int NumLives() { mixin(MGPC!("int", 488)()); }
			AudioDevice.ETTSSpeaker TTSSpeaker() { mixin(MGPC!("AudioDevice.ETTSSpeaker", 485)()); }
			int Deaths() { mixin(MGPC!("int", 480)()); }
		}
		bool bAdmin() { mixin(MGBPC!(524, 0x1)()); }
		bool bAdmin(bool val) { mixin(MSBPC!(524, 0x1)()); }
		bool bOnlySpectator() { mixin(MGBPC!(524, 0x4)()); }
		bool bOnlySpectator(bool val) { mixin(MSBPC!(524, 0x4)()); }
		bool bIsSpectator() { mixin(MGBPC!(524, 0x2)()); }
		bool bIsSpectator(bool val) { mixin(MSBPC!(524, 0x2)()); }
		bool bReadyToPlay() { mixin(MGBPC!(524, 0x10)()); }
		bool bReadyToPlay(bool val) { mixin(MSBPC!(524, 0x10)()); }
		bool bOutOfLives() { mixin(MGBPC!(524, 0x20)()); }
		bool bOutOfLives(bool val) { mixin(MSBPC!(524, 0x20)()); }
		bool bWaitingPlayer() { mixin(MGBPC!(524, 0x8)()); }
		bool bWaitingPlayer(bool val) { mixin(MSBPC!(524, 0x8)()); }
		bool bFromPreviousLevel() { mixin(MGBPC!(524, 0x200)()); }
		bool bFromPreviousLevel(bool val) { mixin(MSBPC!(524, 0x200)()); }
		bool bIsInactive() { mixin(MGBPC!(524, 0x100)()); }
		bool bIsInactive(bool val) { mixin(MSBPC!(524, 0x100)()); }
		bool bHasBeenWelcomed() { mixin(MGBPC!(524, 0x80)()); }
		bool bHasBeenWelcomed(bool val) { mixin(MSBPC!(524, 0x80)()); }
		bool bBot() { mixin(MGBPC!(524, 0x40)()); }
		bool bBot(bool val) { mixin(MSBPC!(524, 0x40)()); }
	}
final:
	PlayerReplicationInfo Duplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Duplicate, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)params.ptr;
	}
	void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePing, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ClientInitialize(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientInitialize, params.ptr, cast(void*)0);
	}
	void SetPlayerTeam(TeamInfo NewTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerTeam, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool ShouldBroadCastWelcomeMessage(bool* bExiting = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bExiting !is null)
			*cast(bool*)params.ptr = *bExiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBroadCastWelcomeMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, ref float YL, ref float YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		*cast(float*)&params[8] = YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		YL = *cast(float*)&params[4];
		YPos = *cast(float*)&params[8];
	}
	void SetPlayerName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerName, params.ptr, cast(void*)0);
	}
	void SetWaitingPlayer(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWaitingPlayer, params.ptr, cast(void*)0);
	}
	void OverrideWith(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideWith, params.ptr, cast(void*)0);
	}
	void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.CopyProperties, params.ptr, cast(void*)0);
	}
	void IncrementDeaths(int* Amt = null)
	{
		ubyte params[4];
		params[] = 0;
		if (Amt !is null)
			*cast(int*)params.ptr = *Amt;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementDeaths, params.ptr, cast(void*)0);
	}
	void SeamlessTravelTo(PlayerReplicationInfo NewPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeamlessTravelTo, params.ptr, cast(void*)0);
	}
	void SetUniqueId(OnlineSubsystem.UniqueNetId PlayerUniqueId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerUniqueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUniqueId, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsInvalidName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInvalidName, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterPlayerWithSession()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPlayerWithSession, cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerFromSession()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayerFromSession, cast(void*)0, cast(void*)0);
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
