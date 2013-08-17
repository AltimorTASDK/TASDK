module UnrealScript.Engine.GuidCache;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GuidCache : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GuidCache")()); }
	private static __gshared GuidCache mDefaultProperties;
	@property final static GuidCache DefaultProperties() { mixin(MGDPC!(GuidCache, "GuidCache Engine.Default__GuidCache")()); }
}
