module UnrealScript.UnrealEd.ListPackagesReferencingCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListPackagesReferencingCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListPackagesReferencingCommandlet")); }
}
