module UnrealScript.Engine.PathBlockingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface PathBlockingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PathBlockingVolume")()); }
	private static __gshared PathBlockingVolume mDefaultProperties;
	@property final static PathBlockingVolume DefaultProperties() { mixin(MGDPC!(PathBlockingVolume, "PathBlockingVolume Engine.Default__PathBlockingVolume")()); }
}
