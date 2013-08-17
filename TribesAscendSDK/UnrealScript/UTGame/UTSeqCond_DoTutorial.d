module UnrealScript.UTGame.UTSeqCond_DoTutorial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_DoTutorial : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqCond_DoTutorial")()); }
	private static __gshared UTSeqCond_DoTutorial mDefaultProperties;
	@property final static UTSeqCond_DoTutorial DefaultProperties() { mixin(MGDPC!(UTSeqCond_DoTutorial, "UTSeqCond_DoTutorial UTGame.Default__UTSeqCond_DoTutorial")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqCond_DoTutorial.Activated")()); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
