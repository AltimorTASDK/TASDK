module UnrealScript.UnrealEd.PatchScriptCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PatchScriptCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PatchScriptCommandlet")); }
}
