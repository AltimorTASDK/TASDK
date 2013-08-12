module UnrealScript.Engine.ImageReflectionComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface ImageReflectionComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ImageReflectionComponent")); }
	@property final auto ref Texture2D ReflectionTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 88); }
}
