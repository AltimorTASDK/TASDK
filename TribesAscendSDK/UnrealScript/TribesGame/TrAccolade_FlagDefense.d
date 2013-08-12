module UnrealScript.TribesGame.TrAccolade_FlagDefense;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagDefense : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagDefense")); }
	private static __gshared TrAccolade_FlagDefense mDefaultProperties;
	@property final static TrAccolade_FlagDefense DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagDefense)("TrAccolade_FlagDefense TribesGame.Default__TrAccolade_FlagDefense")); }
}
