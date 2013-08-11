module UnrealScript.Engine.PortalMarker;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Actor;

extern(C++) interface PortalMarker : NavigationPoint
{
	public @property final auto ref PortalTeleporter MyPortal() { return *cast(PortalTeleporter*)(cast(size_t)cast(void*)this + 692); }
	final bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24672], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
