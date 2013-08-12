module UnrealScript.TribesGame.TrAccolade_KillStreak_Explosive_Ten;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Explosive_Ten : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_KillStreak_Explosive_Ten")); }
	private static __gshared TrAccolade_KillStreak_Explosive_Ten mDefaultProperties;
	@property final static TrAccolade_KillStreak_Explosive_Ten DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_KillStreak_Explosive_Ten)("TrAccolade_KillStreak_Explosive_Ten TribesGame.Default__TrAccolade_KillStreak_Explosive_Ten")); }
}
