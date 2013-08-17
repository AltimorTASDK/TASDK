module UnrealScript.Engine.ShaderCache;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ShaderCache : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ShaderCache")()); }
	private static __gshared ShaderCache mDefaultProperties;
	@property final static ShaderCache DefaultProperties() { mixin(MGDPC!(ShaderCache, "ShaderCache Engine.Default__ShaderCache")()); }
}
