module UnrealScript.Engine.CodecMovieBink;

import ScriptClasses;
import UnrealScript.Engine.CodecMovie;

extern(C++) interface CodecMovieBink : CodecMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CodecMovieBink")); }
}
