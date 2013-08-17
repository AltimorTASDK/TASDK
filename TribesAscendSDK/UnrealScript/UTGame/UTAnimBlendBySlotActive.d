module UnrealScript.UTGame.UTAnimBlendBySlotActive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBySlotActive;

extern(C++) interface UTAnimBlendBySlotActive : UDKAnimBlendBySlotActive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendBySlotActive")); }
	private static __gshared UTAnimBlendBySlotActive mDefaultProperties;
	@property final static UTAnimBlendBySlotActive DefaultProperties() { mixin(MGDPC("UTAnimBlendBySlotActive", "UTAnimBlendBySlotActive UTGame.Default__UTAnimBlendBySlotActive")); }
}
