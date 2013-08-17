module UnrealScript.Engine.SeqEvent_AIReachedRouteActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AIReachedRouteActor : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_AIReachedRouteActor")); }
	private static __gshared SeqEvent_AIReachedRouteActor mDefaultProperties;
	@property final static SeqEvent_AIReachedRouteActor DefaultProperties() { mixin(MGDPC("SeqEvent_AIReachedRouteActor", "SeqEvent_AIReachedRouteActor Engine.Default__SeqEvent_AIReachedRouteActor")); }
}
