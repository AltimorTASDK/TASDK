module UnrealScript.Engine.WindPointSource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Info;

extern(C++) interface WindPointSource : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WindPointSource")()); }
	private static __gshared WindPointSource mDefaultProperties;
	@property final static WindPointSource DefaultProperties() { mixin(MGDPC!(WindPointSource, "WindPointSource Engine.Default__WindPointSource")()); }
	// WARNING: Property 'Component' has the same name as a defined type!
}
