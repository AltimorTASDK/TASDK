module UnrealScript.Engine.World;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface World : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.World")()); }
	private static __gshared World mDefaultProperties;
	@property final static World DefaultProperties() { mixin(MGDPC!(World, "World Engine.Default__World")()); }
}
