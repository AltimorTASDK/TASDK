module UnrealScript.Engine.PortalVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Volume;

extern(C++) interface PortalVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PortalVolume")()); }
	private static __gshared PortalVolume mDefaultProperties;
	@property final static PortalVolume DefaultProperties() { mixin(MGDPC!(PortalVolume, "PortalVolume Engine.Default__PortalVolume")()); }
	@property final auto ref ScriptArray!(PortalTeleporter) Portals() { mixin(MGPC!(ScriptArray!(PortalTeleporter), 520)()); }
}
