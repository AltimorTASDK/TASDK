module UnrealScript.Engine.CodecMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CodecMovie : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CodecMovie")()); }
	private static __gshared CodecMovie mDefaultProperties;
	@property final static CodecMovie DefaultProperties() { mixin(MGDPC!(CodecMovie, "CodecMovie Engine.Default__CodecMovie")()); }
	@property final auto ref float PlaybackDuration() { mixin(MGPC!("float", 60)()); }
}
