module UnrealScript.Core.Class;

import ScriptClasses;
import UnrealScript.Core.State;

extern(C++) interface Class : State
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Class")); }
	private static __gshared Class mDefaultProperties;
	@property final static Class DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Class)("Class Core.Default__Class")); }
}
