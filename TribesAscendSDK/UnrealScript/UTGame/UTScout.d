module UnrealScript.UTGame.UTScout;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKScout;

extern(C++) interface UTScout : UDKScout
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTScout")()); }
	private static __gshared UTScout mDefaultProperties;
	@property final static UTScout DefaultProperties() { mixin(MGDPC!(UTScout, "UTScout UTGame.Default__UTScout")()); }
}
