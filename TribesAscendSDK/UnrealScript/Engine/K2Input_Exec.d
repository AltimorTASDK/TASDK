module UnrealScript.Engine.K2Input_Exec;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Exec : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Exec")); }
	private static __gshared K2Input_Exec mDefaultProperties;
	@property final static K2Input_Exec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Exec)("K2Input_Exec Engine.Default__K2Input_Exec")); }
}
