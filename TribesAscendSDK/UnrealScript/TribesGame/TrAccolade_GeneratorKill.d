module UnrealScript.TribesGame.TrAccolade_GeneratorKill;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GeneratorKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_GeneratorKill")); }
}
