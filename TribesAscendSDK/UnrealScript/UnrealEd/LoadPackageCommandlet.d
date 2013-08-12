module UnrealScript.UnrealEd.LoadPackageCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface LoadPackageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LoadPackageCommandlet")); }
	private static __gshared LoadPackageCommandlet mDefaultProperties;
	@property final static LoadPackageCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LoadPackageCommandlet)("LoadPackageCommandlet UnrealEd.Default__LoadPackageCommandlet")); }
}
