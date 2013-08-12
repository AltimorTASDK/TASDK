module UnrealScript.Engine.RB_ConstraintDrawComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RB_ConstraintDrawComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ConstraintDrawComponent")); }
	@property final auto ref MaterialInterface LimitMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
}
