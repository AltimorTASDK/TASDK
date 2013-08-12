module UnrealScript.UnrealEd.FixupSourceUVsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixupSourceUVsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FixupSourceUVsCommandlet")); }
}
