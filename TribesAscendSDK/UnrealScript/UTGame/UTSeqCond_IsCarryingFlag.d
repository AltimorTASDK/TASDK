module UnrealScript.UTGame.UTSeqCond_IsCarryingFlag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTSeqCond_IsCarryingFlag : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqCond_IsCarryingFlag")); }
	private static __gshared UTSeqCond_IsCarryingFlag mDefaultProperties;
	@property final static UTSeqCond_IsCarryingFlag DefaultProperties() { mixin(MGDPC("UTSeqCond_IsCarryingFlag", "UTSeqCond_IsCarryingFlag UTGame.Default__UTSeqCond_IsCarryingFlag")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function UTGame.UTSeqCond_IsCarryingFlag.Activated")); }
	}
	@property final auto ref
	{
		UTGameObjective FlagBase() { mixin(MGPC("UTGameObjective", 212)); }
		Actor Target() { mixin(MGPC("Actor", 208)); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
