module UnrealScript.Engine.MapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MapInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MapInfo")()); }
	private static __gshared MapInfo mDefaultProperties;
	@property final static MapInfo DefaultProperties() { mixin(MGDPC!(MapInfo, "MapInfo Engine.Default__MapInfo")()); }
}
