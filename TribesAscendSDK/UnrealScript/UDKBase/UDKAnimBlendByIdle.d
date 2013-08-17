module UnrealScript.UDKBase.UDKAnimBlendByIdle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByIdle : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByIdle")); }
	private static __gshared UDKAnimBlendByIdle mDefaultProperties;
	@property final static UDKAnimBlendByIdle DefaultProperties() { mixin(MGDPC("UDKAnimBlendByIdle", "UDKAnimBlendByIdle UDKBase.Default__UDKAnimBlendByIdle")); }
}
