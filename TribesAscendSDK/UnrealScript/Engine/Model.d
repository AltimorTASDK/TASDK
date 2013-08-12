module UnrealScript.Engine.Model;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Model : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Model")); }
	private static __gshared Model mDefaultProperties;
	@property final static Model DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Model)("Model Engine.Default__Model")); }
}
