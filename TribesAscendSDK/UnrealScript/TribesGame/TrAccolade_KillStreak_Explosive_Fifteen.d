module UnrealScript.TribesGame.TrAccolade_KillStreak_Explosive_Fifteen;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Explosive_Fifteen : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_KillStreak_Explosive_Fifteen")); }
}
