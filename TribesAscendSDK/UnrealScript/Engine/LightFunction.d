module UnrealScript.Engine.LightFunction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface LightFunction : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightFunction")); }
	@property final auto ref
	{
		float DisabledBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		Vector Scale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 64); }
		MaterialInterface SourceMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 60); }
	}
}
