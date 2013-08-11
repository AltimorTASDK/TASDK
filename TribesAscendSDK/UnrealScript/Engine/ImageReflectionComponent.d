module UnrealScript.Engine.ImageReflectionComponent;

import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface ImageReflectionComponent : ActorComponent
{
public extern(D):
	@property final auto ref Texture2D ReflectionTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 88); }
}
