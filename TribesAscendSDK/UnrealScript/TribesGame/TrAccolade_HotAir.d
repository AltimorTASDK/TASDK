module UnrealScript.TribesGame.TrAccolade_HotAir;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HotAir : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_HotAir")); }
	private static __gshared TrAccolade_HotAir mDefaultProperties;
	@property final static TrAccolade_HotAir DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_HotAir)("TrAccolade_HotAir TribesGame.Default__TrAccolade_HotAir")); }
}
