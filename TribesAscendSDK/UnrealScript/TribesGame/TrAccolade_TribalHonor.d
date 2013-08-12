module UnrealScript.TribesGame.TrAccolade_TribalHonor;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_TribalHonor : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_TribalHonor")); }
	private static __gshared TrAccolade_TribalHonor mDefaultProperties;
	@property final static TrAccolade_TribalHonor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_TribalHonor)("TrAccolade_TribalHonor TribesGame.Default__TrAccolade_TribalHonor")); }
}
