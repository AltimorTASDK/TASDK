module UnrealScript.TribesGame.TrAccolade_FirstBlood;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FirstBlood : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FirstBlood")); }
	private static __gshared TrAccolade_FirstBlood mDefaultProperties;
	@property final static TrAccolade_FirstBlood DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FirstBlood)("TrAccolade_FirstBlood TribesGame.Default__TrAccolade_FirstBlood")); }
}
