module UnrealScript.UTGame.UTAnimBlendByWeapType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByWeapType;

extern(C++) interface UTAnimBlendByWeapType : UDKAnimBlendByWeapType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByWeapType")); }
	private static __gshared UTAnimBlendByWeapType mDefaultProperties;
	@property final static UTAnimBlendByWeapType DefaultProperties() { mixin(MGDPC("UTAnimBlendByWeapType", "UTAnimBlendByWeapType UTGame.Default__UTAnimBlendByWeapType")); }
}
