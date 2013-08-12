module UnrealScript.TribesGame.TrAccolade_KillStreak_Explosive_Fifteen;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Explosive_Fifteen : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_KillStreak_Explosive_Fifteen")); }
	private static __gshared TrAccolade_KillStreak_Explosive_Fifteen mDefaultProperties;
	@property final static TrAccolade_KillStreak_Explosive_Fifteen DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_KillStreak_Explosive_Fifteen)("TrAccolade_KillStreak_Explosive_Fifteen TribesGame.Default__TrAccolade_KillStreak_Explosive_Fifteen")); }
}
