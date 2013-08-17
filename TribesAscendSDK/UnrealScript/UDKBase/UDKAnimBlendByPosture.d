module UnrealScript.UDKBase.UDKAnimBlendByPosture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPosture : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByPosture")()); }
	private static __gshared UDKAnimBlendByPosture mDefaultProperties;
	@property final static UDKAnimBlendByPosture DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByPosture, "UDKAnimBlendByPosture UDKBase.Default__UDKAnimBlendByPosture")()); }
}
