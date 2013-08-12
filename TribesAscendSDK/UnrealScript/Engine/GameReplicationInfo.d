module UnrealScript.Engine.GameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface GameReplicationInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameReplicationInfo")); }
	private static __gshared GameReplicationInfo mDefaultProperties;
	@property final static GameReplicationInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameReplicationInfo)("GameReplicationInfo Engine.Default__GameReplicationInfo")); }
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
			ScriptFunction ShouldShowGore() { return mShouldShowGore ? mShouldShowGore : (mShouldShowGore = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.ShouldShowGore")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.ReplicatedEvent")); }
			ScriptFunction ReceivedGameClass() { return mReceivedGameClass ? mReceivedGameClass : (mReceivedGameClass = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.ReceivedGameClass")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.Reset")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.Timer")); }
			ScriptFunction OnSameTeam() { return mOnSameTeam ? mOnSameTeam : (mOnSameTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.OnSameTeam")); }
			ScriptFunction AddPRI() { return mAddPRI ? mAddPRI : (mAddPRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.AddPRI")); }
			ScriptFunction RemovePRI() { return mRemovePRI ? mRemovePRI : (mRemovePRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.RemovePRI")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.SetTeam")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.StartMatch")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.EndGame")); }
			ScriptFunction IsMultiplayerGame() { return mIsMultiplayerGame ? mIsMultiplayerGame : (mIsMultiplayerGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.IsMultiplayerGame")); }
			ScriptFunction IsCoopMultiplayerGame() { return mIsCoopMultiplayerGame ? mIsCoopMultiplayerGame : (mIsCoopMultiplayerGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameReplicationInfo.IsCoopMultiplayerGame")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PlayerReplicationInfo) PRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 532); }
			ScriptClass GameClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(TeamInfo) Teams() { return *cast(ScriptArray!(TeamInfo)*)(cast(size_t)cast(void*)this + 504); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 544); }
			Actor Winner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 528); }
			ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
			int TimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			int GoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
			int RemainingMinute() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
			int ElapsedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bMatchHasBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bMatchHasBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool r_bFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
		bool r_bFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
		bool bMatchIsOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
		bool bMatchIsOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
		bool bStopCountDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bStopCountDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
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
