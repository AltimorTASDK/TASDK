module UnrealScript.UnrealEd.FindUnreferencedFunctionsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindUnreferencedFunctionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindUnreferencedFunctionsCommandlet")); }
	private static __gshared FindUnreferencedFunctionsCommandlet mDefaultProperties;
	@property final static FindUnreferencedFunctionsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindUnreferencedFunctionsCommandlet)("FindUnreferencedFunctionsCommandlet UnrealEd.Default__FindUnreferencedFunctionsCommandlet")); }
}
