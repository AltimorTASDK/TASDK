module UnrealScript.TribesGame.TrAccolade_Revenge;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Revenge : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_Revenge")); }
	private static __gshared TrAccolade_Revenge mDefaultProperties;
	@property final static TrAccolade_Revenge DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_Revenge)("TrAccolade_Revenge TribesGame.Default__TrAccolade_Revenge")); }
}
