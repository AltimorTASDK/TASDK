module UnrealScript.Engine.LightFunction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface LightFunction : UObject
{
public extern(D):
	@property final auto ref
	{
		float DisabledBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		Vector Scale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 64); }
		MaterialInterface SourceMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 60); }
	}
}
