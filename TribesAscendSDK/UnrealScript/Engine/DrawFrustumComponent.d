module UnrealScript.Engine.DrawFrustumComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawFrustumComponent : PrimitiveComponent
{
	// WARNING: Property 'Texture' has the same name as a defined type!
	public @property final auto ref float FrustumEndDist() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float FrustumStartDist() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float FrustumAspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float FrustumAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref UObject.Color FrustumColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
}
