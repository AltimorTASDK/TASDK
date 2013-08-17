module UnrealScript.UTGame.UTSeqEvent_ObjectiveCompleted;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_ObjectiveCompleted : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqEvent_ObjectiveCompleted")); }
	private static __gshared UTSeqEvent_ObjectiveCompleted mDefaultProperties;
	@property final static UTSeqEvent_ObjectiveCompleted DefaultProperties() { mixin(MGDPC("UTSeqEvent_ObjectiveCompleted", "UTSeqEvent_ObjectiveCompleted UTGame.Default__UTSeqEvent_ObjectiveCompleted")); }
}
