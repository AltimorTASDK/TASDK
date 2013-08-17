module UnrealScript.UDKBase.UDKAnimBlendByWeapType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendByWeapType : AnimNodeBlendPerBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByWeapType")); }
	private static __gshared UDKAnimBlendByWeapType mDefaultProperties;
	@property final static UDKAnimBlendByWeapType DefaultProperties() { mixin(MGDPC("UDKAnimBlendByWeapType", "UDKAnimBlendByWeapType UDKBase.Default__UDKAnimBlendByWeapType")); }
}
