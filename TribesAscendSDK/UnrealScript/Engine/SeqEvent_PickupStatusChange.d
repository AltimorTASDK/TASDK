module UnrealScript.Engine.SeqEvent_PickupStatusChange;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_PickupStatusChange : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_PickupStatusChange")); }
	private static __gshared SeqEvent_PickupStatusChange mDefaultProperties;
	@property final static SeqEvent_PickupStatusChange DefaultProperties() { mixin(MGDPC("SeqEvent_PickupStatusChange", "SeqEvent_PickupStatusChange Engine.Default__SeqEvent_PickupStatusChange")); }
}
