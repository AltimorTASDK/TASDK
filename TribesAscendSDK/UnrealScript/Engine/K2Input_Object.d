module UnrealScript.Engine.K2Input_Object;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Object : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Object")); }
	private static __gshared K2Input_Object mDefaultProperties;
	@property final static K2Input_Object DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Object)("K2Input_Object Engine.Default__K2Input_Object")); }
}
