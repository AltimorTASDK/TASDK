module UnrealScript.Engine.NavMeshBoundsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface NavMeshBoundsVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshBoundsVolume")); }
	private static __gshared NavMeshBoundsVolume mDefaultProperties;
	@property final static NavMeshBoundsVolume DefaultProperties() { mixin(MGDPC("NavMeshBoundsVolume", "NavMeshBoundsVolume Engine.Default__NavMeshBoundsVolume")); }
}
