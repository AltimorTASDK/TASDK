module UnrealScript.Engine.GravityVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface GravityVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GravityVolume")()); }
	private static __gshared GravityVolume mDefaultProperties;
	@property final static GravityVolume DefaultProperties() { mixin(MGDPC!(GravityVolume, "GravityVolume Engine.Default__GravityVolume")()); }
	@property final auto ref float GravityZ() { mixin(MGPC!("float", 584)()); }
}
