module UnrealScript.UnrealEd.ConformCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ConformCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ConformCommandlet")); }
	private static __gshared ConformCommandlet mDefaultProperties;
	@property final static ConformCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ConformCommandlet)("ConformCommandlet UnrealEd.Default__ConformCommandlet")); }
}
