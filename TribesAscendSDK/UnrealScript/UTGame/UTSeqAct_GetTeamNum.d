module UnrealScript.UTGame.UTSeqAct_GetTeamNum;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_GetTeamNum : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_GetTeamNum")); }
	private static __gshared UTSeqAct_GetTeamNum mDefaultProperties;
	@property final static UTSeqAct_GetTeamNum DefaultProperties() { mixin(MGDPC("UTSeqAct_GetTeamNum", "UTSeqAct_GetTeamNum UTGame.Default__UTSeqAct_GetTeamNum")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function UTGame.UTSeqAct_GetTeamNum.Activated")); }
	}
	@property final auto ref int TeamNum() { mixin(MGPC("int", 232)); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
