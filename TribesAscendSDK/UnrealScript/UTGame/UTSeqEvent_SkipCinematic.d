module UnrealScript.UTGame.UTSeqEvent_SkipCinematic;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_SkipCinematic : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqEvent_SkipCinematic")); }
	private static __gshared UTSeqEvent_SkipCinematic mDefaultProperties;
	@property final static UTSeqEvent_SkipCinematic DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqEvent_SkipCinematic)("UTSeqEvent_SkipCinematic UTGame.Default__UTSeqEvent_SkipCinematic")); }
}
