module UnrealScript.UnrealEd.ShowObjectCountCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowObjectCountCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ShowObjectCountCommandlet")); }
}
