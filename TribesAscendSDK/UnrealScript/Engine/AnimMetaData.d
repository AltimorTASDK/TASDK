module UnrealScript.Engine.AnimMetaData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface AnimMetaData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimMetaData")()); }
	private static __gshared AnimMetaData mDefaultProperties;
	@property final static AnimMetaData DefaultProperties() { mixin(MGDPC!(AnimMetaData, "AnimMetaData Engine.Default__AnimMetaData")()); }
}
