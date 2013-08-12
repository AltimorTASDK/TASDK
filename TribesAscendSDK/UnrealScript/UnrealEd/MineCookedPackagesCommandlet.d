module UnrealScript.UnrealEd.MineCookedPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface MineCookedPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MineCookedPackagesCommandlet")); }
	private static __gshared MineCookedPackagesCommandlet mDefaultProperties;
	@property final static MineCookedPackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MineCookedPackagesCommandlet)("MineCookedPackagesCommandlet UnrealEd.Default__MineCookedPackagesCommandlet")); }
}
