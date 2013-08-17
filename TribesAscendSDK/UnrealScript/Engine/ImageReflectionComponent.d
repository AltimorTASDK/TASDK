module UnrealScript.Engine.ImageReflectionComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface ImageReflectionComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ImageReflectionComponent")()); }
	private static __gshared ImageReflectionComponent mDefaultProperties;
	@property final static ImageReflectionComponent DefaultProperties() { mixin(MGDPC!(ImageReflectionComponent, "ImageReflectionComponent Engine.Default__ImageReflectionComponent")()); }
	@property final auto ref Texture2D ReflectionTexture() { mixin(MGPC!("Texture2D", 88)()); }
}
