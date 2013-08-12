module UnrealScript.Engine.WindPointSourceComponent;

import ScriptClasses;
import UnrealScript.Engine.WindDirectionalSourceComponent;

extern(C++) interface WindPointSourceComponent : WindDirectionalSourceComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WindPointSourceComponent")); }
	private static __gshared WindPointSourceComponent mDefaultProperties;
	@property final static WindPointSourceComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(WindPointSourceComponent)("WindPointSourceComponent Engine.Default__WindPointSourceComponent")); }
	@property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
}
