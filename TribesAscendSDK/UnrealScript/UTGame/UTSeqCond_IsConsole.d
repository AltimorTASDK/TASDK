module UnrealScript.UTGame.UTSeqCond_IsConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_IsConsole : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqCond_IsConsole")()); }
	private static __gshared UTSeqCond_IsConsole mDefaultProperties;
	@property final static UTSeqCond_IsConsole DefaultProperties() { mixin(MGDPC!(UTSeqCond_IsConsole, "UTSeqCond_IsConsole UTGame.Default__UTSeqCond_IsConsole")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqCond_IsConsole.Activated")()); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
