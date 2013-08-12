module UnrealScript.TribesGame.TrAccolade_FinalBlow;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FinalBlow : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FinalBlow")); }
	private static __gshared TrAccolade_FinalBlow mDefaultProperties;
	@property final static TrAccolade_FinalBlow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FinalBlow)("TrAccolade_FinalBlow TribesGame.Default__TrAccolade_FinalBlow")); }
}
