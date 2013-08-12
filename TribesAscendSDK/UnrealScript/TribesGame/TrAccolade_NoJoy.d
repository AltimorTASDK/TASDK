module UnrealScript.TribesGame.TrAccolade_NoJoy;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_NoJoy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_NoJoy")); }
	private static __gshared TrAccolade_NoJoy mDefaultProperties;
	@property final static TrAccolade_NoJoy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_NoJoy)("TrAccolade_NoJoy TribesGame.Default__TrAccolade_NoJoy")); }
}
