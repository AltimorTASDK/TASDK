module UnrealScript.TribesGame.TrAccolade_Melee;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Melee : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_Melee")); }
}
