module UnrealScript.TribesGame.TrAccolade_GameComplete;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GameComplete : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_GameComplete")); }
	private static __gshared TrAccolade_GameComplete mDefaultProperties;
	@property final static TrAccolade_GameComplete DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_GameComplete)("TrAccolade_GameComplete TribesGame.Default__TrAccolade_GameComplete")); }
}
