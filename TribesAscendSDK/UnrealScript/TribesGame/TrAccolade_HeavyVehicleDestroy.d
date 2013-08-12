module UnrealScript.TribesGame.TrAccolade_HeavyVehicleDestroy;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HeavyVehicleDestroy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_HeavyVehicleDestroy")); }
	private static __gshared TrAccolade_HeavyVehicleDestroy mDefaultProperties;
	@property final static TrAccolade_HeavyVehicleDestroy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_HeavyVehicleDestroy)("TrAccolade_HeavyVehicleDestroy TribesGame.Default__TrAccolade_HeavyVehicleDestroy")); }
}
