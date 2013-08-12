module UnrealScript.UnrealEd.SetMaterialUsageCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface SetMaterialUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SetMaterialUsageCommandlet")); }
}
