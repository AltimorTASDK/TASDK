module UnrealScript.UTGame.UTAnimBlendByPhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByPhysicsVolume;

extern(C++) interface UTAnimBlendByPhysicsVolume : UDKAnimBlendByPhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByPhysicsVolume")); }
	private static __gshared UTAnimBlendByPhysicsVolume mDefaultProperties;
	@property final static UTAnimBlendByPhysicsVolume DefaultProperties() { mixin(MGDPC("UTAnimBlendByPhysicsVolume", "UTAnimBlendByPhysicsVolume UTGame.Default__UTAnimBlendByPhysicsVolume")); }
}
