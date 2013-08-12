module UnrealScript.UTGame.UTSeqEvent_ObjectiveCompleted;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_ObjectiveCompleted : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqEvent_ObjectiveCompleted")); }
}
