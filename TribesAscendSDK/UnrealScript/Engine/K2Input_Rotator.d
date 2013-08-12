module UnrealScript.Engine.K2Input_Rotator;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Rotator : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Rotator")); }
	private static __gshared K2Input_Rotator mDefaultProperties;
	@property final static K2Input_Rotator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Rotator)("K2Input_Rotator Engine.Default__K2Input_Rotator")); }
	@property final auto ref Rotator DefaultRotator() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 84); }
}
