module UnrealScript.UnrealEd.ResavePackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ResavePackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ResavePackagesCommandlet")); }
	private static __gshared ResavePackagesCommandlet mDefaultProperties;
	@property final static ResavePackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ResavePackagesCommandlet)("ResavePackagesCommandlet UnrealEd.Default__ResavePackagesCommandlet")); }
}
