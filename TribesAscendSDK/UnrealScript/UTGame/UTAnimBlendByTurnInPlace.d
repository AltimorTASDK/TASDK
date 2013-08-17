module UnrealScript.UTGame.UTAnimBlendByTurnInPlace;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByTurnInPlace;

extern(C++) interface UTAnimBlendByTurnInPlace : UDKAnimBlendByTurnInPlace
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByTurnInPlace")); }
	private static __gshared UTAnimBlendByTurnInPlace mDefaultProperties;
	@property final static UTAnimBlendByTurnInPlace DefaultProperties() { mixin(MGDPC("UTAnimBlendByTurnInPlace", "UTAnimBlendByTurnInPlace UTGame.Default__UTAnimBlendByTurnInPlace")); }
}
