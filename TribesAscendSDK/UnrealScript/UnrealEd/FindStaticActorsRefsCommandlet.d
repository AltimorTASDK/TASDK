module UnrealScript.UnrealEd.FindStaticActorsRefsCommandlet;

import ScriptClasses;
import UnrealScript.UnrealEd.PerformMapCheckCommandlet;

extern(C++) interface FindStaticActorsRefsCommandlet : PerformMapCheckCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindStaticActorsRefsCommandlet")); }
}
