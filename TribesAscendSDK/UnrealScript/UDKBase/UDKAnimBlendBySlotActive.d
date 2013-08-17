module UnrealScript.UDKBase.UDKAnimBlendBySlotActive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendBySlotActive : AnimNodeBlendPerBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendBySlotActive")); }
	private static __gshared UDKAnimBlendBySlotActive mDefaultProperties;
	@property final static UDKAnimBlendBySlotActive DefaultProperties() { mixin(MGDPC("UDKAnimBlendBySlotActive", "UDKAnimBlendBySlotActive UDKBase.Default__UDKAnimBlendBySlotActive")); }
	@property final auto ref AnimNodeSlot ChildSlot() { mixin(MGPC("AnimNodeSlot", 300)); }
}
