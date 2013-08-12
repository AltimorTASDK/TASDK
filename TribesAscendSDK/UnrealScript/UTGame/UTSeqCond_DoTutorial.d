module UnrealScript.UTGame.UTSeqCond_DoTutorial;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_DoTutorial : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqCond_DoTutorial")); }
	private static __gshared UTSeqCond_DoTutorial mDefaultProperties;
	@property final static UTSeqCond_DoTutorial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqCond_DoTutorial)("UTSeqCond_DoTutorial UTGame.Default__UTSeqCond_DoTutorial")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqCond_DoTutorial.Activated")); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
