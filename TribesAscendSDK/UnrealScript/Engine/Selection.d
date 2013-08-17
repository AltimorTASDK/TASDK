module UnrealScript.Engine.Selection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Selection : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Selection")()); }
	private static __gshared Selection mDefaultProperties;
	@property final static Selection DefaultProperties() { mixin(MGDPC!(Selection, "Selection Engine.Default__Selection")()); }
}
