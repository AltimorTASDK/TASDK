module UnrealScript.UTGame.UTAnimBlendByFall;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByFall;

extern(C++) interface UTAnimBlendByFall : UDKAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByFall")); }
	private static __gshared UTAnimBlendByFall mDefaultProperties;
	@property final static UTAnimBlendByFall DefaultProperties() { mixin(MGDPC("UTAnimBlendByFall", "UTAnimBlendByFall UTGame.Default__UTAnimBlendByFall")); }
}
