module UnrealScript.TribesGame.TrGame_TrSiege;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPowerGenerator_Siege;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TrSiege : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TrSiege")()); }
	private static __gshared TrGame_TrSiege mDefaultProperties;
	@property final static TrGame_TrSiege DefaultProperties() { mixin(MGDPC!(TrGame_TrSiege, "TrGame_TrSiege TribesGame.Default__TrGame_TrSiege")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrGame_TrSiege.PostBeginPlay")()); }
			ScriptFunction OnGeneratorBlownUp() { mixin(MGF!("mOnGeneratorBlownUp", "Function TribesGame.TrGame_TrSiege.OnGeneratorBlownUp")()); }
			ScriptFunction OnCoreBlownUp() { mixin(MGF!("mOnCoreBlownUp", "Function TribesGame.TrGame_TrSiege.OnCoreBlownUp")()); }
			ScriptFunction IsInRoundOne() { mixin(MGF!("mIsInRoundOne", "Function TribesGame.TrGame_TrSiege.IsInRoundOne")()); }
			ScriptFunction RoundOneOver() { mixin(MGF!("mRoundOneOver", "Function TribesGame.TrGame_TrSiege.RoundOneOver")()); }
			ScriptFunction ResetGame() { mixin(MGF!("mResetGame", "Function TribesGame.TrGame_TrSiege.ResetGame")()); }
			ScriptFunction SetPhase() { mixin(MGF!("mSetPhase", "Function TribesGame.TrGame_TrSiege.SetPhase")()); }
			ScriptFunction SwapTeams() { mixin(MGF!("mSwapTeams", "Function TribesGame.TrGame_TrSiege.SwapTeams")()); }
			ScriptFunction EndGame() { mixin(MGF!("mEndGame", "Function TribesGame.TrGame_TrSiege.EndGame")()); }
		}
	}
	static struct MatchInProgress
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TrSiege.MatchInProgress")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrPowerGenerator_Siege) m_Phase1OnlineGenerators() { mixin(MGPC!(ScriptArray!(TrPowerGenerator_Siege), 1456)()); }
			int m_CurrentPhase() { mixin(MGPC!(int, 1476)()); }
			float m_bRoundOneTimeSecs() { mixin(MGPC!(float, 1468)()); }
		}
		bool m_bWasCoreDestroyedInRoundOne() { mixin(MGBPC!(1472, 0x1)()); }
		bool m_bWasCoreDestroyedInRoundOne(bool val) { mixin(MSBPC!(1472, 0x1)()); }
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
