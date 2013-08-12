module UnrealScript.TribesGame.TrAccolade_BluePlateSpecial;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BluePlateSpecial : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BluePlateSpecial")); }
	private static __gshared TrAccolade_BluePlateSpecial mDefaultProperties;
	@property final static TrAccolade_BluePlateSpecial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BluePlateSpecial)("TrAccolade_BluePlateSpecial TribesGame.Default__TrAccolade_BluePlateSpecial")); }
}
