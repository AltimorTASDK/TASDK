module UnrealScript.UTGame.UTSD_SpawnedKActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KActor;

extern(C++) interface UTSD_SpawnedKActor : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSD_SpawnedKActor")); }
	private static __gshared UTSD_SpawnedKActor mDefaultProperties;
	@property final static UTSD_SpawnedKActor DefaultProperties() { mixin(MGDPC("UTSD_SpawnedKActor", "UTSD_SpawnedKActor UTGame.Default__UTSD_SpawnedKActor")); }
}
