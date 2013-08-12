module UnrealScript.UnrealEd.DiffPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface DiffPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.DiffPackagesCommandlet")); }
	private static __gshared DiffPackagesCommandlet mDefaultProperties;
	@property final static DiffPackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DiffPackagesCommandlet)("DiffPackagesCommandlet UnrealEd.Default__DiffPackagesCommandlet")); }
}
