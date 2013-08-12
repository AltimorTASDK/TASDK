module UnrealScript.TribesGame.TrAccolade_DoubleDown;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_DoubleDown : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_DoubleDown")); }
	private static __gshared TrAccolade_DoubleDown mDefaultProperties;
	@property final static TrAccolade_DoubleDown DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_DoubleDown)("TrAccolade_DoubleDown TribesGame.Default__TrAccolade_DoubleDown")); }
}
