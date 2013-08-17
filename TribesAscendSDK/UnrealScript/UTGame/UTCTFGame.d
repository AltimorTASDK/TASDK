module UnrealScript.UTGame.UTCTFGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AIController;
import UnrealScript.UTGame.UTCTFFlag;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTTeamGame;

extern(C++) interface UTCTFGame : UTTeamGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCTFGame")()); }
	private static __gshared UTCTFGame mDefaultProperties;
	@property final static UTCTFGame DefaultProperties() { mixin(MGDPC!(UTCTFGame, "UTCTFGame UTGame.Default__UTCTFGame")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetEndGameFocus;
			ScriptFunction mGetHandicapNeed;
			ScriptFunction mGetLocationFor;
			ScriptFunction mRegisterFlag;
			ScriptFunction mNearGoal;
			ScriptFunction mWantFastSpawnFor;
			ScriptFunction mCheckEndGame;
			ScriptFunction mScoreFlag;
			ScriptFunction mViewObjective;
			ScriptFunction mGetAutoObjectiveFor;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTCTFGame.PostBeginPlay")()); }
			ScriptFunction SetEndGameFocus() { mixin(MGF!("mSetEndGameFocus", "Function UTGame.UTCTFGame.SetEndGameFocus")()); }
			ScriptFunction GetHandicapNeed() { mixin(MGF!("mGetHandicapNeed", "Function UTGame.UTCTFGame.GetHandicapNeed")()); }
			ScriptFunction GetLocationFor() { mixin(MGF!("mGetLocationFor", "Function UTGame.UTCTFGame.GetLocationFor")()); }
			ScriptFunction RegisterFlag() { mixin(MGF!("mRegisterFlag", "Function UTGame.UTCTFGame.RegisterFlag")()); }
			ScriptFunction NearGoal() { mixin(MGF!("mNearGoal", "Function UTGame.UTCTFGame.NearGoal")()); }
			ScriptFunction WantFastSpawnFor() { mixin(MGF!("mWantFastSpawnFor", "Function UTGame.UTCTFGame.WantFastSpawnFor")()); }
			ScriptFunction CheckEndGame() { mixin(MGF!("mCheckEndGame", "Function UTGame.UTCTFGame.CheckEndGame")()); }
			ScriptFunction ScoreFlag() { mixin(MGF!("mScoreFlag", "Function UTGame.UTCTFGame.ScoreFlag")()); }
			ScriptFunction ViewObjective() { mixin(MGF!("mViewObjective", "Function UTGame.UTCTFGame.ViewObjective")()); }
			ScriptFunction GetAutoObjectiveFor() { mixin(MGF!("mGetAutoObjectiveFor", "Function UTGame.UTCTFGame.GetAutoObjectiveFor")()); }
		}
	}
	static struct MatchOver
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTCTFGame.MatchOver")()); }
	}
	@property final auto ref
	{
		ScriptClass AnnouncerMessageClass() { mixin(MGPC!("ScriptClass", 1336)()); }
		UTCTFFlag Flags() { mixin(MGPC!("UTCTFFlag", 1328)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetEndGameFocus(PlayerReplicationInfo Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEndGameFocus, params.ptr, cast(void*)0);
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
		LocationObject = *cast(Actor*)&params[4];
		MessageIndex = *cast(int*)&params[8];
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
	void ScoreFlag(Controller Scorer, UTCTFFlag theFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Scorer;
		*cast(UTCTFFlag*)&params[4] = theFlag;
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
}
