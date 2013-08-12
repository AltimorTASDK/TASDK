module UnrealScript.Engine.PortalVolume;

import ScriptClasses;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Volume;

extern(C++) interface PortalVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PortalVolume")); }
	private static __gshared PortalVolume mDefaultProperties;
	@property final static PortalVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PortalVolume)("PortalVolume Engine.Default__PortalVolume")); }
	@property final auto ref ScriptArray!(PortalTeleporter) Portals() { return *cast(ScriptArray!(PortalTeleporter)*)(cast(size_t)cast(void*)this + 520); }
}
