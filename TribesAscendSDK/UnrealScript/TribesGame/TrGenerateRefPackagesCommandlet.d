module UnrealScript.TribesGame.TrGenerateRefPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface TrGenerateRefPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGenerateRefPackagesCommandlet")); }
}
