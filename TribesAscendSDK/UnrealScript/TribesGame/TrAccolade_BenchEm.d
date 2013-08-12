module UnrealScript.TribesGame.TrAccolade_BenchEm;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BenchEm : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BenchEm")); }
	private static __gshared TrAccolade_BenchEm mDefaultProperties;
	@property final static TrAccolade_BenchEm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BenchEm)("TrAccolade_BenchEm TribesGame.Default__TrAccolade_BenchEm")); }
}
