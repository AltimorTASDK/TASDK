module UnrealScript.Engine.CodecMovieFallback;

import UnrealScript.Engine.CodecMovie;

extern(C++) interface CodecMovieFallback : CodecMovie
{
	public @property final auto ref float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
}
