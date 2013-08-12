module UnrealScript.Engine.SkyLightComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SkyLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkyLightComponent")); }
	@property final auto ref
	{
		UObject.Color LowerColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 436); }
		float LowerBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
	}
}
