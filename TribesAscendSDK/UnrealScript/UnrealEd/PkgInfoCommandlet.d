module UnrealScript.UnrealEd.PkgInfoCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PkgInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PkgInfoCommandlet")); }
	private static __gshared PkgInfoCommandlet mDefaultProperties;
	@property final static PkgInfoCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PkgInfoCommandlet)("PkgInfoCommandlet UnrealEd.Default__PkgInfoCommandlet")); }
}
