module UnrealScript.TribesGame.TrAccolade_HeavyVehicleDestroy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HeavyVehicleDestroy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_HeavyVehicleDestroy")()); }
	private static __gshared TrAccolade_HeavyVehicleDestroy mDefaultProperties;
	@property final static TrAccolade_HeavyVehicleDestroy DefaultProperties() { mixin(MGDPC!(TrAccolade_HeavyVehicleDestroy, "TrAccolade_HeavyVehicleDestroy TribesGame.Default__TrAccolade_HeavyVehicleDestroy")()); }
}
