module UnrealScript.Engine.WindPointSourceComponent;

import ScriptClasses;
import UnrealScript.Engine.WindDirectionalSourceComponent;

extern(C++) interface WindPointSourceComponent : WindDirectionalSourceComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WindPointSourceComponent")); }
	@property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
}
