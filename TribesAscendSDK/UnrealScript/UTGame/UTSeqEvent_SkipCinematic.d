module UnrealScript.UTGame.UTSeqEvent_SkipCinematic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_SkipCinematic : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqEvent_SkipCinematic")); }
	private static __gshared UTSeqEvent_SkipCinematic mDefaultProperties;
	@property final static UTSeqEvent_SkipCinematic DefaultProperties() { mixin(MGDPC("UTSeqEvent_SkipCinematic", "UTSeqEvent_SkipCinematic UTGame.Default__UTSeqEvent_SkipCinematic")); }
}
