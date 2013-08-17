module UnrealScript.UTGame.UTAnimNodeJumpLeanOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;

extern(C++) interface UTAnimNodeJumpLeanOffset : UDKAnimNodeJumpLeanOffset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimNodeJumpLeanOffset")()); }
	private static __gshared UTAnimNodeJumpLeanOffset mDefaultProperties;
	@property final static UTAnimNodeJumpLeanOffset DefaultProperties() { mixin(MGDPC!(UTAnimNodeJumpLeanOffset, "UTAnimNodeJumpLeanOffset UTGame.Default__UTAnimNodeJumpLeanOffset")()); }
}
