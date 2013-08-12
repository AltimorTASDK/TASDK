module UnrealScript.Engine.ImageReflectionSceneCapture;

import ScriptClasses;
import UnrealScript.Engine.ImageReflection;

extern(C++) interface ImageReflectionSceneCapture : ImageReflection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ImageReflectionSceneCapture")); }
	@property final auto ref
	{
		float ColorRange() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		float DepthRange() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	}
}
