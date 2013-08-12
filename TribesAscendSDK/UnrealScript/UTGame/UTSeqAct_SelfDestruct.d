module UnrealScript.UTGame.UTSeqAct_SelfDestruct;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SelfDestruct : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_SelfDestruct")); }
}
