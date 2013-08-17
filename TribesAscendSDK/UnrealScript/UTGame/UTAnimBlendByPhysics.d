module UnrealScript.UTGame.UTAnimBlendByPhysics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByPhysics;

extern(C++) interface UTAnimBlendByPhysics : UDKAnimBlendByPhysics
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByPhysics")); }
	private static __gshared UTAnimBlendByPhysics mDefaultProperties;
	@property final static UTAnimBlendByPhysics DefaultProperties() { mixin(MGDPC("UTAnimBlendByPhysics", "UTAnimBlendByPhysics UTGame.Default__UTAnimBlendByPhysics")); }
}
