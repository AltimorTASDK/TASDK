module UnrealScript.Core.MetaData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MetaData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.MetaData")()); }
	private static __gshared MetaData mDefaultProperties;
	@property final static MetaData DefaultProperties() { mixin(MGDPC!(MetaData, "MetaData Core.Default__MetaData")()); }
}
