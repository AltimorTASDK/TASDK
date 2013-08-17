module UnrealScript.Engine.WindDirectionalSource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Info;

extern(C++) interface WindDirectionalSource : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WindDirectionalSource")()); }
	private static __gshared WindDirectionalSource mDefaultProperties;
	@property final static WindDirectionalSource DefaultProperties() { mixin(MGDPC!(WindDirectionalSource, "WindDirectionalSource Engine.Default__WindDirectionalSource")()); }
	// WARNING: Property 'Component' has the same name as a defined type!
}
