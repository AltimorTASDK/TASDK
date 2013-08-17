module UnrealScript.Core.ScriptStruct;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Struct;

extern(C++) interface ScriptStruct : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ScriptStruct")()); }
	private static __gshared ScriptStruct mDefaultProperties;
	@property final static ScriptStruct DefaultProperties() { mixin(MGDPC!(ScriptStruct, "ScriptStruct Core.Default__ScriptStruct")()); }
}
