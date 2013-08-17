module UnrealScript.UTGame.UTAnimBlendByHoverboardTurn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

extern(C++) interface UTAnimBlendByHoverboardTurn : UDKAnimBlendByHoverboardTurn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimBlendByHoverboardTurn")()); }
	private static __gshared UTAnimBlendByHoverboardTurn mDefaultProperties;
	@property final static UTAnimBlendByHoverboardTurn DefaultProperties() { mixin(MGDPC!(UTAnimBlendByHoverboardTurn, "UTAnimBlendByHoverboardTurn UTGame.Default__UTAnimBlendByHoverboardTurn")()); }
}
