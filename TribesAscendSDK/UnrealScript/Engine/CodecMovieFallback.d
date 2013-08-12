module UnrealScript.Engine.CodecMovieFallback;

import ScriptClasses;
import UnrealScript.Engine.CodecMovie;

extern(C++) interface CodecMovieFallback : CodecMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CodecMovieFallback")); }
	@property final auto ref float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
}
