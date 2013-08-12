module UnrealScript.UTGame.UTCTFGame;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFGame")); }
	private static __gshared UTCTFGame mDefaultProperties;
	@property final static UTCTFGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTCTFGame)("UTCTFGame UTGame.Default__UTCTFGame")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.PostBeginPlay")); }
			ScriptFunction SetEndGameFocus() { return mSetEndGameFocus ? mSetEndGameFocus : (mSetEndGameFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.SetEndGameFocus")); }
			ScriptFunction GetHandicapNeed() { return mGetHandicapNeed ? mGetHandicapNeed : (mGetHandicapNeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.GetHandicapNeed")); }
			ScriptFunction GetLocationFor() { return mGetLocationFor ? mGetLocationFor : (mGetLocationFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.GetLocationFor")); }
			ScriptFunction RegisterFlag() { return mRegisterFlag ? mRegisterFlag : (mRegisterFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.RegisterFlag")); }
			ScriptFunction NearGoal() { return mNearGoal ? mNearGoal : (mNearGoal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.NearGoal")); }
			ScriptFunction WantFastSpawnFor() { return mWantFastSpawnFor ? mWantFastSpawnFor : (mWantFastSpawnFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.WantFastSpawnFor")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.CheckEndGame")); }
			ScriptFunction ScoreFlag() { return mScoreFlag ? mScoreFlag : (mScoreFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.ScoreFlag")); }
			ScriptFunction ViewObjective() { return mViewObjective ? mViewObjective : (mViewObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.ViewObjective")); }
			ScriptFunction GetAutoObjectiveFor() { return mGetAutoObjectiveFor ? mGetAutoObjectiveFor : (mGetAutoObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFGame.GetAutoObjectiveFor")); }
		}
	}
	@property final auto ref
	{
		ScriptClass AnnouncerMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1336); }
		UTCTFFlag Flags() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 1328); }
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
	bool GetLocationFor(Pawn StatusPawn, Actor* LocationObject, int* MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = *LocationObject;
		*cast(int*)&params[8] = *MessageIndex;
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
