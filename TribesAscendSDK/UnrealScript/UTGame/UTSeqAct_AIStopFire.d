module UnrealScript.UTGame.UTSeqAct_AIStopFire;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIStopFire : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_AIStopFire")); }
	private static __gshared UTSeqAct_AIStopFire mDefaultProperties;
	@property final static UTSeqAct_AIStopFire DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_AIStopFire)("UTSeqAct_AIStopFire UTGame.Default__UTSeqAct_AIStopFire")); }
}
