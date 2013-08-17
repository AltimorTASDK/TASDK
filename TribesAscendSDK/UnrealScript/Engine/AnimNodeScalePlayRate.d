module UnrealScript.Engine.AnimNodeScalePlayRate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeScalePlayRate : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeScalePlayRate")()); }
	private static __gshared AnimNodeScalePlayRate mDefaultProperties;
	@property final static AnimNodeScalePlayRate DefaultProperties() { mixin(MGDPC!(AnimNodeScalePlayRate, "AnimNodeScalePlayRate Engine.Default__AnimNodeScalePlayRate")()); }
	@property final auto ref float ScaleByValue() { mixin(MGPC!(float, 244)()); }
}
