module UnrealScript.Engine.GameReplicationInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface GameReplicationInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GameReplicationInfo")()); }
	private static __gshared GameReplicationInfo mDefaultProperties;
	@property final static GameReplicationInfo DefaultProperties() { mixin(MGDPC!(GameReplicationInfo, "GameReplicationInfo Engine.Default__GameReplicationInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldShowGore;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mReceivedGameClass;
			ScriptFunction mReset;
			ScriptFunction mTimer;
			ScriptFunction mOnSameTeam;
			ScriptFunction mAddPRI;
			ScriptFunction mRemovePRI;
			ScriptFunction mSetTeam;
			ScriptFunction mStartMatch;
			ScriptFunction mEndGame;
			ScriptFunction mIsMultiplayerGame;
			ScriptFunction mIsCoopMultiplayerGame;
		}
		public @property static final
		{
			ScriptFunction ShouldShowGore() { mixin(MGF!("mShouldShowGore", "Function Engine.GameReplicationInfo.ShouldShowGore")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.GameReplicationInfo.PostBeginPlay")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.GameReplicationInfo.ReplicatedEvent")()); }
			ScriptFunction ReceivedGameClass() { mixin(MGF!("mReceivedGameClass", "Function Engine.GameReplicationInfo.ReceivedGameClass")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.GameReplicationInfo.Reset")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function Engine.GameReplicationInfo.Timer")()); }
			ScriptFunction OnSameTeam() { mixin(MGF!("mOnSameTeam", "Function Engine.GameReplicationInfo.OnSameTeam")()); }
			ScriptFunction AddPRI() { mixin(MGF!("mAddPRI", "Function Engine.GameReplicationInfo.AddPRI")()); }
			ScriptFunction RemovePRI() { mixin(MGF!("mRemovePRI", "Function Engine.GameReplicationInfo.RemovePRI")()); }
			ScriptFunction SetTeam() { mixin(MGF!("mSetTeam", "Function Engine.GameReplicationInfo.SetTeam")()); }
			ScriptFunction StartMatch() { mixin(MGF!("mStartMatch", "Function Engine.GameReplicationInfo.StartMatch")()); }
			ScriptFunction EndGame() { mixin(MGF!("mEndGame", "Function Engine.GameReplicationInfo.EndGame")()); }
			ScriptFunction IsMultiplayerGame() { mixin(MGF!("mIsMultiplayerGame", "Function Engine.GameReplicationInfo.IsMultiplayerGame")()); }
			ScriptFunction IsCoopMultiplayerGame() { mixin(MGF!("mIsCoopMultiplayerGame", "Function Engine.GameReplicationInfo.IsCoopMultiplayerGame")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PlayerReplicationInfo) PRIArray() { mixin(MGPC!(ScriptArray!(PlayerReplicationInfo), 532)()); }
			ScriptClass GameClass() { mixin(MGPC!(ScriptClass, 476)()); }
			ScriptArray!(TeamInfo) Teams() { mixin(MGPC!(ScriptArray!(TeamInfo), 504)()); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { mixin(MGPC!(ScriptArray!(PlayerReplicationInfo), 544)()); }
			Actor Winner() { mixin(MGPC!(Actor, 528)()); }
			ScriptString ServerName() { mixin(MGPC!(ScriptString, 516)()); }
			int TimeLimit() { mixin(MGPC!(int, 500)()); }
			int GoalScore() { mixin(MGPC!(int, 496)()); }
			int RemainingMinute() { mixin(MGPC!(int, 492)()); }
			int ElapsedTime() { mixin(MGPC!(int, 488)()); }
			int RemainingTime() { mixin(MGPC!(int, 484)()); }
		}
		bool bMatchHasBegun() { mixin(MGBPC!(480, 0x2)()); }
		bool bMatchHasBegun(bool val) { mixin(MSBPC!(480, 0x2)()); }
		bool r_bFriendlyFire() { mixin(MGBPC!(480, 0x8)()); }
		bool r_bFriendlyFire(bool val) { mixin(MSBPC!(480, 0x8)()); }
		bool bMatchIsOver() { mixin(MGBPC!(480, 0x4)()); }
		bool bMatchIsOver(bool val) { mixin(MSBPC!(480, 0x4)()); }
		bool bStopCountDown() { mixin(MGBPC!(480, 0x1)()); }
		bool bStopCountDown(bool val) { mixin(MSBPC!(480, 0x1)()); }
	}
final:
	bool ShouldShowGore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowGore, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ReceivedGameClass()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedGameClass, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	bool OnSameTeam(Actor A, Actor B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(Actor*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSameTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddPRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPRI, params.ptr, cast(void*)0);
	}
	void RemovePRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePRI, params.ptr, cast(void*)0);
	}
	void SetTeam(int Index, TeamInfo TI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TeamInfo*)&params[4] = TI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void EndGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, cast(void*)0, cast(void*)0);
	}
	bool IsMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMultiplayerGame, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCoopMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCoopMultiplayerGame, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
