module UnrealScript.TribesGame.TrAccolade_LightVehicleDestroy;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_LightVehicleDestroy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_LightVehicleDestroy")); }
	private static __gshared TrAccolade_LightVehicleDestroy mDefaultProperties;
	@property final static TrAccolade_LightVehicleDestroy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_LightVehicleDestroy)("TrAccolade_LightVehicleDestroy TribesGame.Default__TrAccolade_LightVehicleDestroy")); }
}
