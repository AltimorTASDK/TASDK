module UnrealScript.TribesGame.TrGame_TrSiege;

import ScriptClasses;
import UnrealScript.TribesGame.TrPowerGenerator_Siege;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TrSiege : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TrSiege")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mOnGeneratorBlownUp;
			ScriptFunction mOnCoreBlownUp;
			ScriptFunction mIsInRoundOne;
			ScriptFunction mRoundOneOver;
			ScriptFunction mResetGame;
			ScriptFunction mSetPhase;
			ScriptFunction mSwapTeams;
			ScriptFunction mEndGame;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.PostBeginPlay")); }
			ScriptFunction OnGeneratorBlownUp() { return mOnGeneratorBlownUp ? mOnGeneratorBlownUp : (mOnGeneratorBlownUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.OnGeneratorBlownUp")); }
			ScriptFunction OnCoreBlownUp() { return mOnCoreBlownUp ? mOnCoreBlownUp : (mOnCoreBlownUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.OnCoreBlownUp")); }
			ScriptFunction IsInRoundOne() { return mIsInRoundOne ? mIsInRoundOne : (mIsInRoundOne = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.IsInRoundOne")); }
			ScriptFunction RoundOneOver() { return mRoundOneOver ? mRoundOneOver : (mRoundOneOver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.RoundOneOver")); }
			ScriptFunction ResetGame() { return mResetGame ? mResetGame : (mResetGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.ResetGame")); }
			ScriptFunction SetPhase() { return mSetPhase ? mSetPhase : (mSetPhase = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.SetPhase")); }
			ScriptFunction SwapTeams() { return mSwapTeams ? mSwapTeams : (mSwapTeams = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.SwapTeams")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrSiege.EndGame")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrPowerGenerator_Siege) m_Phase1OnlineGenerators() { return *cast(ScriptArray!(TrPowerGenerator_Siege)*)(cast(size_t)cast(void*)this + 1456); }
			int m_CurrentPhase() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
			float m_bRoundOneTimeSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1468); }
		}
		bool m_bWasCoreDestroyedInRoundOne() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x1) != 0; }
		bool m_bWasCoreDestroyedInRoundOne(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void OnGeneratorBlownUp(TrPowerGenerator_Siege G)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPowerGenerator_Siege*)params.ptr = G;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGeneratorBlownUp, params.ptr, cast(void*)0);
	}
	void OnCoreBlownUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCoreBlownUp, cast(void*)0, cast(void*)0);
	}
	bool IsInRoundOne()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInRoundOne, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RoundOneOver(bool bDestroyedCore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyedCore;
		(cast(ScriptObject)this).ProcessEvent(Functions.RoundOneOver, params.ptr, cast(void*)0);
	}
	void ResetGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetGame, cast(void*)0, cast(void*)0);
	}
	void SetPhase(int PhaseNumber)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PhaseNumber;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhase, params.ptr, cast(void*)0);
	}
	void SwapTeams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapTeams, cast(void*)0, cast(void*)0);
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
}
