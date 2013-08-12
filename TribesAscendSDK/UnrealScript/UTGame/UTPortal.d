module UnrealScript.UTGame.UTPortal;

import ScriptClasses;
import UnrealScript.Engine.PortalTeleporter;

extern(C++) interface UTPortal : PortalTeleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPortal")); }
	private static __gshared UTPortal mDefaultProperties;
	@property final static UTPortal DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTPortal)("UTPortal UTGame.Default__UTPortal")); }
}
