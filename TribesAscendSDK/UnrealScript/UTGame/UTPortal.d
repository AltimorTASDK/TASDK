module UnrealScript.UTGame.UTPortal;

import ScriptClasses;
import UnrealScript.Engine.PortalTeleporter;

extern(C++) interface UTPortal : PortalTeleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPortal")); }
}
