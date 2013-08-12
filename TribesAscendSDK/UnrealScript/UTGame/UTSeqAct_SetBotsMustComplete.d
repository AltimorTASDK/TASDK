module UnrealScript.UTGame.UTSeqAct_SetBotsMustComplete;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SetBotsMustComplete : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_SetBotsMustComplete")); }
	private static __gshared UTSeqAct_SetBotsMustComplete mDefaultProperties;
	@property final static UTSeqAct_SetBotsMustComplete DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_SetBotsMustComplete)("UTSeqAct_SetBotsMustComplete UTGame.Default__UTSeqAct_SetBotsMustComplete")); }
}
