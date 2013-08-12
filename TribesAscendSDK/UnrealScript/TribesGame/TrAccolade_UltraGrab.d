module UnrealScript.TribesGame.TrAccolade_UltraGrab;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_UltraGrab : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_UltraGrab")); }
	private static __gshared TrAccolade_UltraGrab mDefaultProperties;
	@property final static TrAccolade_UltraGrab DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_UltraGrab)("TrAccolade_UltraGrab TribesGame.Default__TrAccolade_UltraGrab")); }
}
