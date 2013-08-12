module UnrealScript.Engine.SmokeTestCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface SmokeTestCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SmokeTestCommandlet")); }
	private static __gshared SmokeTestCommandlet mDefaultProperties;
	@property final static SmokeTestCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SmokeTestCommandlet)("SmokeTestCommandlet Engine.Default__SmokeTestCommandlet")); }
}
