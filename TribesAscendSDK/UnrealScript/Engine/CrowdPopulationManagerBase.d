module UnrealScript.Engine.CrowdPopulationManagerBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface CrowdPopulationManagerBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CrowdPopulationManagerBase")()); }
	private static __gshared CrowdPopulationManagerBase mDefaultProperties;
	@property final static CrowdPopulationManagerBase DefaultProperties() { mixin(MGDPC!(CrowdPopulationManagerBase, "CrowdPopulationManagerBase Engine.Default__CrowdPopulationManagerBase")()); }
}
