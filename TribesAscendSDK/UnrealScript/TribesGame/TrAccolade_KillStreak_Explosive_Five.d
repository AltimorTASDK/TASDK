module UnrealScript.TribesGame.TrAccolade_KillStreak_Explosive_Five;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Explosive_Five : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_KillStreak_Explosive_Five")); }
	private static __gshared TrAccolade_KillStreak_Explosive_Five mDefaultProperties;
	@property final static TrAccolade_KillStreak_Explosive_Five DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_KillStreak_Explosive_Five)("TrAccolade_KillStreak_Explosive_Five TribesGame.Default__TrAccolade_KillStreak_Explosive_Five")); }
}
