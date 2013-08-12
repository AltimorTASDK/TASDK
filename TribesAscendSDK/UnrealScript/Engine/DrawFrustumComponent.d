module UnrealScript.Engine.DrawFrustumComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawFrustumComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawFrustumComponent")); }
	private static __gshared DrawFrustumComponent mDefaultProperties;
	@property final static DrawFrustumComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawFrustumComponent)("DrawFrustumComponent Engine.Default__DrawFrustumComponent")); }
	@property final auto ref
	{
		// WARNING: Property 'Texture' has the same name as a defined type!
		float FrustumEndDist() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		float FrustumStartDist() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		float FrustumAspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float FrustumAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		UObject.Color FrustumColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
	}
}
