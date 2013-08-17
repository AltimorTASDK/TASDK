module UnrealScript.UTGame.UTAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

extern(C++) interface UTAnimBlendByHoverboardTilt : UDKAnimBlendByHoverboardTilt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByHoverboardTilt")); }
	private static __gshared UTAnimBlendByHoverboardTilt mDefaultProperties;
	@property final static UTAnimBlendByHoverboardTilt DefaultProperties() { mixin(MGDPC("UTAnimBlendByHoverboardTilt", "UTAnimBlendByHoverboardTilt UTGame.Default__UTAnimBlendByHoverboardTilt")); }
}
