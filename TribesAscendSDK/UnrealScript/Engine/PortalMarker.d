module UnrealScript.Engine.PortalMarker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Actor;

extern(C++) interface PortalMarker : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PortalMarker")); }
	private static __gshared PortalMarker mDefaultProperties;
	@property final static PortalMarker DefaultProperties() { mixin(MGDPC("PortalMarker", "PortalMarker Engine.Default__PortalMarker")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCanTeleport;
		public @property static final ScriptFunction CanTeleport() { mixin(MGF("mCanTeleport", "Function Engine.PortalMarker.CanTeleport")); }
	}
	@property final auto ref PortalTeleporter MyPortal() { mixin(MGPC("PortalTeleporter", 692)); }
	final bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
