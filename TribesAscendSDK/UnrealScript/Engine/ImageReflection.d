module UnrealScript.Engine.ImageReflection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface ImageReflection : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ImageReflection")); }
	private static __gshared ImageReflection mDefaultProperties;
	@property final static ImageReflection DefaultProperties() { mixin(MGDPC("ImageReflection", "ImageReflection Engine.Default__ImageReflection")); }
	@property final auto ref
	{
		// WARNING: Property 'ImageReflectionComponent' has the same name as a defined type!
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ReflectionComponent'!
	}
}
