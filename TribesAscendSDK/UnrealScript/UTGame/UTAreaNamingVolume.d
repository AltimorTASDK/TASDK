module UnrealScript.UTGame.UTAreaNamingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface UTAreaNamingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAreaNamingVolume")); }
	private static __gshared UTAreaNamingVolume mDefaultProperties;
	@property final static UTAreaNamingVolume DefaultProperties() { mixin(MGDPC("UTAreaNamingVolume", "UTAreaNamingVolume UTGame.Default__UTAreaNamingVolume")); }
}
