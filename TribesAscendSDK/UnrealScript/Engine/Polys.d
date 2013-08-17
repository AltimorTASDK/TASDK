module UnrealScript.Engine.Polys;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Polys : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Polys")()); }
	private static __gshared Polys mDefaultProperties;
	@property final static Polys DefaultProperties() { mixin(MGDPC!(Polys, "Polys Engine.Default__Polys")()); }
}
