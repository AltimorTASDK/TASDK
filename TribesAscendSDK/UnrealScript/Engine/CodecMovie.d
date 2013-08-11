module UnrealScript.Engine.CodecMovie;

import UnrealScript.Core.UObject;

extern(C++) interface CodecMovie : UObject
{
public extern(D):
	@property final auto ref float PlaybackDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
