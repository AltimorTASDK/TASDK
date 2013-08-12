module UnrealScript.TribesGame.TrAccolade_Assist;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Assist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_Assist")); }
	private static __gshared TrAccolade_Assist mDefaultProperties;
	@property final static TrAccolade_Assist DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_Assist)("TrAccolade_Assist TribesGame.Default__TrAccolade_Assist")); }
}
