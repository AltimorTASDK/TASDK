module UnrealScript.TribesGame.TrAccolade_UnitedWeStand;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_UnitedWeStand : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_UnitedWeStand")); }
	private static __gshared TrAccolade_UnitedWeStand mDefaultProperties;
	@property final static TrAccolade_UnitedWeStand DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_UnitedWeStand)("TrAccolade_UnitedWeStand TribesGame.Default__TrAccolade_UnitedWeStand")); }
}
