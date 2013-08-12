module UnrealScript.UTGame.UTSeqAct_ActivateRocketBoosters;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ActivateRocketBoosters : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_ActivateRocketBoosters")); }
	private static __gshared UTSeqAct_ActivateRocketBoosters mDefaultProperties;
	@property final static UTSeqAct_ActivateRocketBoosters DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_ActivateRocketBoosters)("UTSeqAct_ActivateRocketBoosters UTGame.Default__UTSeqAct_ActivateRocketBoosters")); }
}
