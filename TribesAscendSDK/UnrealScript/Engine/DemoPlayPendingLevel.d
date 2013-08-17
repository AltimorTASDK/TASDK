module UnrealScript.Engine.DemoPlayPendingLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PendingLevel;

extern(C++) interface DemoPlayPendingLevel : PendingLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DemoPlayPendingLevel")); }
	private static __gshared DemoPlayPendingLevel mDefaultProperties;
	@property final static DemoPlayPendingLevel DefaultProperties() { mixin(MGDPC("DemoPlayPendingLevel", "DemoPlayPendingLevel Engine.Default__DemoPlayPendingLevel")); }
}
