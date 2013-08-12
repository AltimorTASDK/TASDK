module UnrealScript.TribesGame.TrAccolade_KillStreak_Twenty;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Twenty : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_KillStreak_Twenty")); }
	private static __gshared TrAccolade_KillStreak_Twenty mDefaultProperties;
	@property final static TrAccolade_KillStreak_Twenty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_KillStreak_Twenty)("TrAccolade_KillStreak_Twenty TribesGame.Default__TrAccolade_KillStreak_Twenty")); }
}
