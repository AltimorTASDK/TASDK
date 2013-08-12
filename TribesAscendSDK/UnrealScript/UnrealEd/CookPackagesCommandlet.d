module UnrealScript.UnrealEd.CookPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface CookPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CookPackagesCommandlet")); }
	private static __gshared CookPackagesCommandlet mDefaultProperties;
	@property final static CookPackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CookPackagesCommandlet)("CookPackagesCommandlet UnrealEd.Default__CookPackagesCommandlet")); }
}
