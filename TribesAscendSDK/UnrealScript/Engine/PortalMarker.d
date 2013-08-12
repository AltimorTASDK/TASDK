module UnrealScript.Engine.PortalMarker;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.PortalTeleporter;
import UnrealScript.Engine.Actor;

extern(C++) interface PortalMarker : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PortalMarker")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCanTeleport;
		public @property static final ScriptFunction CanTeleport() { return mCanTeleport ? mCanTeleport : (mCanTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.PortalMarker.CanTeleport")); }
	}
	@property final auto ref PortalTeleporter MyPortal() { return *cast(PortalTeleporter*)(cast(size_t)cast(void*)this + 692); }
	final bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
