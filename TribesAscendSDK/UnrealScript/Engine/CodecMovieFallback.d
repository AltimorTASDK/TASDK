module UnrealScript.Engine.CodecMovieFallback;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CodecMovie;

extern(C++) interface CodecMovieFallback : CodecMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CodecMovieFallback")()); }
	private static __gshared CodecMovieFallback mDefaultProperties;
	@property final static CodecMovieFallback DefaultProperties() { mixin(MGDPC!(CodecMovieFallback, "CodecMovieFallback Engine.Default__CodecMovieFallback")()); }
	@property final auto ref float CurrentTime() { mixin(MGPC!("float", 64)()); }
}
