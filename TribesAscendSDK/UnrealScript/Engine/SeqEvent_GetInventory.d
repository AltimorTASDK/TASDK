module UnrealScript.Engine.SeqEvent_GetInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_GetInventory : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_GetInventory")); }
	private static __gshared SeqEvent_GetInventory mDefaultProperties;
	@property final static SeqEvent_GetInventory DefaultProperties() { mixin(MGDPC("SeqEvent_GetInventory", "SeqEvent_GetInventory Engine.Default__SeqEvent_GetInventory")); }
}
