module UnrealScript.Engine.AnimNodeScaleRateBySpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface AnimNodeScaleRateBySpeed : AnimNodeScalePlayRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeScaleRateBySpeed")()); }
	private static __gshared AnimNodeScaleRateBySpeed mDefaultProperties;
	@property final static AnimNodeScaleRateBySpeed DefaultProperties() { mixin(MGDPC!(AnimNodeScaleRateBySpeed, "AnimNodeScaleRateBySpeed Engine.Default__AnimNodeScaleRateBySpeed")()); }
	@property final auto ref float BaseSpeed() { mixin(MGPC!("float", 248)()); }
}
