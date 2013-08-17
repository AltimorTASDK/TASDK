module UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByHoverboarding : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByHoverboarding")()); }
	private static __gshared UDKAnimBlendByHoverboarding mDefaultProperties;
	@property final static UDKAnimBlendByHoverboarding DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByHoverboarding, "UDKAnimBlendByHoverboarding UDKBase.Default__UDKAnimBlendByHoverboarding")()); }
	@property final auto ref
	{
		float FallTimeBeforeAnim() { mixin(MGPC!("float", 304)()); }
		float BoardLeanAmount() { mixin(MGPC!("float", 300)()); }
		int LastActiveChildIndex() { mixin(MGPC!("int", 296)()); }
	}
}
