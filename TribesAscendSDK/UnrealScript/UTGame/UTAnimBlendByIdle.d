module UnrealScript.UTGame.UTAnimBlendByIdle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByIdle;

extern(C++) interface UTAnimBlendByIdle : UDKAnimBlendByIdle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByIdle")); }
	private static __gshared UTAnimBlendByIdle mDefaultProperties;
	@property final static UTAnimBlendByIdle DefaultProperties() { mixin(MGDPC("UTAnimBlendByIdle", "UTAnimBlendByIdle UTGame.Default__UTAnimBlendByIdle")); }
}
