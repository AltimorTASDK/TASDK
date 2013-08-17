module UnrealScript.UTGame.UTAnimBlendByHoverJump;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTAnimBlendByFall;

extern(C++) interface UTAnimBlendByHoverJump : UTAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimBlendByHoverJump")()); }
	private static __gshared UTAnimBlendByHoverJump mDefaultProperties;
	@property final static UTAnimBlendByHoverJump DefaultProperties() { mixin(MGDPC!(UTAnimBlendByHoverJump, "UTAnimBlendByHoverJump UTGame.Default__UTAnimBlendByHoverJump")()); }
}
