module UnrealScript.Engine.CodecMovieBink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CodecMovie;

extern(C++) interface CodecMovieBink : CodecMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CodecMovieBink")); }
	private static __gshared CodecMovieBink mDefaultProperties;
	@property final static CodecMovieBink DefaultProperties() { mixin(MGDPC("CodecMovieBink", "CodecMovieBink Engine.Default__CodecMovieBink")); }
}
