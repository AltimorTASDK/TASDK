module UnrealScript.TribesGame.TrGame_TRTDM;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TRTDM : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TRTDM")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mScoreKill;
			ScriptFunction mCheckScore;
		}
		public @property static final
		{
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRTDM.ScoreKill")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRTDM.CheckScore")); }
		}
	}
final:
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
