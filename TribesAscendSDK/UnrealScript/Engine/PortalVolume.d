module UnrealScript.Engine.PortalVolume;

import ScriptClasses;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Volume;

extern(C++) interface PortalVolume : Volume
{
	public @property final auto ref ScriptArray!(PortalTeleporter) Portals() { return *cast(ScriptArray!(PortalTeleporter)*)(cast(size_t)cast(void*)this + 520); }
}
