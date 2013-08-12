module UnrealScript.TribesGame.TrAccolade_Caerbannog;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Caerbannog : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_Caerbannog")); }
	private static __gshared TrAccolade_Caerbannog mDefaultProperties;
	@property final static TrAccolade_Caerbannog DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_Caerbannog)("TrAccolade_Caerbannog TribesGame.Default__TrAccolade_Caerbannog")); }
}
