module UnrealScript.UTGame.UTAnimBlendByFlying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByFlying;

extern(C++) interface UTAnimBlendByFlying : UDKAnimBlendByFlying
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByFlying")); }
	private static __gshared UTAnimBlendByFlying mDefaultProperties;
	@property final static UTAnimBlendByFlying DefaultProperties() { mixin(MGDPC("UTAnimBlendByFlying", "UTAnimBlendByFlying UTGame.Default__UTAnimBlendByFlying")); }
}
