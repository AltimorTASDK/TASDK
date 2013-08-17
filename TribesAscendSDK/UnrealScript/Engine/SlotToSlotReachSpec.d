module UnrealScript.Engine.SlotToSlotReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface SlotToSlotReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SlotToSlotReachSpec")); }
	private static __gshared SlotToSlotReachSpec mDefaultProperties;
	@property final static SlotToSlotReachSpec DefaultProperties() { mixin(MGDPC("SlotToSlotReachSpec", "SlotToSlotReachSpec Engine.Default__SlotToSlotReachSpec")); }
	@property final auto ref ubyte SpecDirection() { mixin(MGPC("ubyte", 144)); }
}
