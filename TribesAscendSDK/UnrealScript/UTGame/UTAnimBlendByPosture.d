module UnrealScript.UTGame.UTAnimBlendByPosture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByPosture;

extern(C++) interface UTAnimBlendByPosture : UDKAnimBlendByPosture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByPosture")); }
	private static __gshared UTAnimBlendByPosture mDefaultProperties;
	@property final static UTAnimBlendByPosture DefaultProperties() { mixin(MGDPC("UTAnimBlendByPosture", "UTAnimBlendByPosture UTGame.Default__UTAnimBlendByPosture")); }
}
