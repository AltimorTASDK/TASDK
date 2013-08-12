module UnrealScript.UTGame.UTSeqCond_IsCarryingFlag;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTSeqCond_IsCarryingFlag : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqCond_IsCarryingFlag")); }
	private static __gshared UTSeqCond_IsCarryingFlag mDefaultProperties;
	@property final static UTSeqCond_IsCarryingFlag DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqCond_IsCarryingFlag)("UTSeqCond_IsCarryingFlag UTGame.Default__UTSeqCond_IsCarryingFlag")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqCond_IsCarryingFlag.Activated")); }
	}
	@property final auto ref
	{
		UTGameObjective FlagBase() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 212); }
		Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
