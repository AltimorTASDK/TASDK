module UnrealScript.UTGame.UTAnimBlendBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UTAnimBlendBase : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimBlendBase")()); }
	private static __gshared UTAnimBlendBase mDefaultProperties;
	@property final static UTAnimBlendBase DefaultProperties() { mixin(MGDPC!(UTAnimBlendBase, "UTAnimBlendBase UTGame.Default__UTAnimBlendBase")()); }
}
