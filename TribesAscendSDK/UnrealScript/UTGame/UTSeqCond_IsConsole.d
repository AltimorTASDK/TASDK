module UnrealScript.UTGame.UTSeqCond_IsConsole;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_IsConsole : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqCond_IsConsole")); }
	private static __gshared UTSeqCond_IsConsole mDefaultProperties;
	@property final static UTSeqCond_IsConsole DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqCond_IsConsole)("UTSeqCond_IsConsole UTGame.Default__UTSeqCond_IsConsole")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqCond_IsConsole.Activated")); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
