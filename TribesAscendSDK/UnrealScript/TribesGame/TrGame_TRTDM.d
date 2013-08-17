module UnrealScript.TribesGame.TrGame_TRTDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TRTDM : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGame_TRTDM")); }
	private static __gshared TrGame_TRTDM mDefaultProperties;
	@property final static TrGame_TRTDM DefaultProperties() { mixin(MGDPC("TrGame_TRTDM", "TrGame_TRTDM TribesGame.Default__TrGame_TRTDM")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mScoreKill;
			ScriptFunction mCheckScore;
		}
		public @property static final
		{
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function TribesGame.TrGame_TRTDM.ScoreKill")); }
			ScriptFunction CheckScore() { mixin(MGF("mCheckScore", "Function TribesGame.TrGame_TRTDM.CheckScore")); }
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
