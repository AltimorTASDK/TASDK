module UnrealScript.UTGame.UTGameSearchPersonal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSearchCommon;

extern(C++) interface UTGameSearchPersonal : UTGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameSearchPersonal")); }
	private static __gshared UTGameSearchPersonal mDefaultProperties;
	@property final static UTGameSearchPersonal DefaultProperties() { mixin(MGDPC("UTGameSearchPersonal", "UTGameSearchPersonal UTGame.Default__UTGameSearchPersonal")); }
}
