module UnrealScript.TribesGame.TrGame_TRCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFlagCTF;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TRCTF : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TRCTF")()); }
	private static __gshared TrGame_TRCTF mDefaultProperties;
	@property final static TrGame_TRCTF DefaultProperties() { mixin(MGDPC!(TrGame_TRCTF, "TrGame_TRCTF TribesGame.Default__TrGame_TRCTF")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mGetHandicapNeed;
			ScriptFunction mGetLocationFor;
			ScriptFunction mRegisterFlag;
			ScriptFunction mNearGoal;
			ScriptFunction mWantFastSpawnFor;
			ScriptFunction mCheckEndGame;
			ScriptFunction mScoreFlag;
			ScriptFunction mViewObjective;
			ScriptFunction mGetAutoObjectiveFor;
			ScriptFunction mAnnounceScore;
			ScriptFunction mCheckScore;
			ScriptFunction mGetGameTypeId;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrGame_TRCTF.PostBeginPlay")()); }
			ScriptFunction ApplyServerSettings() { mixin(MGF!("mApplyServerSettings", "Function TribesGame.TrGame_TRCTF.ApplyServerSettings")()); }
			ScriptFunction GetHandicapNeed() { mixin(MGF!("mGetHandicapNeed", "Function TribesGame.TrGame_TRCTF.GetHandicapNeed")()); }
			ScriptFunction GetLocationFor() { mixin(MGF!("mGetLocationFor", "Function TribesGame.TrGame_TRCTF.GetLocationFor")()); }
			ScriptFunction RegisterFlag() { mixin(MGF!("mRegisterFlag", "Function TribesGame.TrGame_TRCTF.RegisterFlag")()); }
			ScriptFunction NearGoal() { mixin(MGF!("mNearGoal", "Function TribesGame.TrGame_TRCTF.NearGoal")()); }
			ScriptFunction WantFastSpawnFor() { mixin(MGF!("mWantFastSpawnFor", "Function TribesGame.TrGame_TRCTF.WantFastSpawnFor")()); }
			ScriptFunction CheckEndGame() { mixin(MGF!("mCheckEndGame", "Function TribesGame.TrGame_TRCTF.CheckEndGame")()); }
			ScriptFunction ScoreFlag() { mixin(MGF!("mScoreFlag", "Function TribesGame.TrGame_TRCTF.ScoreFlag")()); }
			ScriptFunction ViewObjective() { mixin(MGF!("mViewObjective", "Function TribesGame.TrGame_TRCTF.ViewObjective")()); }
			ScriptFunction GetAutoObjectiveFor() { mixin(MGF!("mGetAutoObjectiveFor", "Function TribesGame.TrGame_TRCTF.GetAutoObjectiveFor")()); }
			ScriptFunction AnnounceScore() { mixin(MGF!("mAnnounceScore", "Function TribesGame.TrGame_TRCTF.AnnounceScore")()); }
			ScriptFunction CheckScore() { mixin(MGF!("mCheckScore", "Function TribesGame.TrGame_TRCTF.CheckScore")()); }
			ScriptFunction GetGameTypeId() { mixin(MGF!("mGetGameTypeId", "Function TribesGame.TrGame_TRCTF.GetGameTypeId")()); }
		}
	}
	static struct MatchOver
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TRCTF.MatchOver")()); }
	}
	@property final auto ref
	{
		TrFlagCTF m_Flags() { mixin(MGPC!(TrFlagCTF, 1456)()); }
		ScriptClass AnnouncerMessageClass() { mixin(MGPC!(ScriptClass, 1464)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandicapNeed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool GetLocationFor(Pawn StatusPawn, ref Actor LocationObject, ref int MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = LocationObject;
		*cast(int*)&params[8] = MessageIndex;
		*cast(int*)&params[12] = LocationSpeechOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationFor, params.ptr, cast(void*)0);
		*LocationObject = *cast(Actor*)&params[4];
		*MessageIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[16];
	}
	void RegisterFlag(UTCarriedObject F, int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = F;
		*cast(int*)&params[4] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterFlag, params.ptr, cast(void*)0);
	}
	bool NearGoal(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool WantFastSpawnFor(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.WantFastSpawnFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ScoreFlag(Controller Scorer, TrFlagBase theFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Scorer;
		*cast(TrFlagBase*)&params[4] = theFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreFlag, params.ptr, cast(void*)0);
	}
	void ViewObjective(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewObjective, params.ptr, cast(void*)0);
	}
	Actor GetAutoObjectiveFor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAutoObjectiveFor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void AnnounceScore(int ScoringTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ScoringTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnounceScore, params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
