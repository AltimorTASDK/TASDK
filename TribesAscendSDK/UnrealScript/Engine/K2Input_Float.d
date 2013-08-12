module UnrealScript.Engine.K2Input_Float;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Float : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Float")); }
	private static __gshared K2Input_Float mDefaultProperties;
	@property final static K2Input_Float DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Float)("K2Input_Float Engine.Default__K2Input_Float")); }
	@property final auto ref float DefaultFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
}
