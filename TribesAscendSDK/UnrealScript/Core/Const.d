module UnrealScript.Core.Const;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Field;

extern(C++) interface Const : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Const")); }
	private static __gshared Const mDefaultProperties;
	@property final static Const DefaultProperties() { mixin(MGDPC("Const", "Const Core.Default__Const")); }
}
