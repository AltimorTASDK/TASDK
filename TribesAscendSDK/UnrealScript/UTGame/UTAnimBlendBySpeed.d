module UnrealScript.UTGame.UTAnimBlendBySpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBySpeed;

extern(C++) interface UTAnimBlendBySpeed : UDKAnimBlendBySpeed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendBySpeed")); }
	private static __gshared UTAnimBlendBySpeed mDefaultProperties;
	@property final static UTAnimBlendBySpeed DefaultProperties() { mixin(MGDPC("UTAnimBlendBySpeed", "UTAnimBlendBySpeed UTGame.Default__UTAnimBlendBySpeed")); }
}
