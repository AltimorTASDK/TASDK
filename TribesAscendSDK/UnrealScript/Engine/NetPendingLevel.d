module UnrealScript.Engine.NetPendingLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PendingLevel;

extern(C++) interface NetPendingLevel : PendingLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NetPendingLevel")); }
	private static __gshared NetPendingLevel mDefaultProperties;
	@property final static NetPendingLevel DefaultProperties() { mixin(MGDPC("NetPendingLevel", "NetPendingLevel Engine.Default__NetPendingLevel")); }
}
