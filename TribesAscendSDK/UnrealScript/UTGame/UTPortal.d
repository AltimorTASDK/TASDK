module UnrealScript.UTGame.UTPortal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PortalTeleporter;

extern(C++) interface UTPortal : PortalTeleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPortal")); }
	private static __gshared UTPortal mDefaultProperties;
	@property final static UTPortal DefaultProperties() { mixin(MGDPC("UTPortal", "UTPortal UTGame.Default__UTPortal")); }
}
