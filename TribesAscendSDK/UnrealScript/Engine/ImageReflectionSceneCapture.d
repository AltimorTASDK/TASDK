module UnrealScript.Engine.ImageReflectionSceneCapture;

import UnrealScript.Engine.ImageReflection;

extern(C++) interface ImageReflectionSceneCapture : ImageReflection
{
	public @property final auto ref float ColorRange() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float DepthRange() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
}
