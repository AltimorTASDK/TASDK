module UnrealScript.Engine.ImageReflectionSceneCapture;

import UnrealScript.Engine.ImageReflection;

extern(C++) interface ImageReflectionSceneCapture : ImageReflection
{
public extern(D):
	@property final auto ref
	{
		float ColorRange() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		float DepthRange() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	}
}
