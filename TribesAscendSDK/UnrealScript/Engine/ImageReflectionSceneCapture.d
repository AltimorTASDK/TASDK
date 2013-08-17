module UnrealScript.Engine.ImageReflectionSceneCapture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ImageReflection;

extern(C++) interface ImageReflectionSceneCapture : ImageReflection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ImageReflectionSceneCapture")); }
	private static __gshared ImageReflectionSceneCapture mDefaultProperties;
	@property final static ImageReflectionSceneCapture DefaultProperties() { mixin(MGDPC("ImageReflectionSceneCapture", "ImageReflectionSceneCapture Engine.Default__ImageReflectionSceneCapture")); }
	@property final auto ref
	{
		float ColorRange() { mixin(MGPC("float", 488)); }
		float DepthRange() { mixin(MGPC("float", 484)); }
	}
}
