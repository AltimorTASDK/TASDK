module UnrealScript.UDKBase.UDKAnimBlendBySpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendBySpeed : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendBySpeed")()); }
	private static __gshared UDKAnimBlendBySpeed mDefaultProperties;
	@property final static UDKAnimBlendBySpeed DefaultProperties() { mixin(MGDPC!(UDKAnimBlendBySpeed, "UDKAnimBlendBySpeed UDKBase.Default__UDKAnimBlendBySpeed")()); }
	@property final auto ref
	{
		float MaxSpeed() { mixin(MGPC!("float", 264)()); }
		float MinSpeed() { mixin(MGPC!("float", 260)()); }
	}
}
