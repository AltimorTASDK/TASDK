module UnrealScript.UTGame.UTAnimBlendByHoverboarding;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

extern(C++) interface UTAnimBlendByHoverboarding : UDKAnimBlendByHoverboarding
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByHoverboarding")); }
	private static __gshared UTAnimBlendByHoverboarding mDefaultProperties;
	@property final static UTAnimBlendByHoverboarding DefaultProperties() { mixin(MGDPC("UTAnimBlendByHoverboarding", "UTAnimBlendByHoverboarding UTGame.Default__UTAnimBlendByHoverboarding")); }
}
