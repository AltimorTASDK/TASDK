module UnrealScript.Engine.K2Input_Vector;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Vector : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Vector")); }
	private static __gshared K2Input_Vector mDefaultProperties;
	@property final static K2Input_Vector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Vector)("K2Input_Vector Engine.Default__K2Input_Vector")); }
	@property final auto ref Vector DefaultVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
}
