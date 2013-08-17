module UnrealScript.TribesGame.TrVehicleStation_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleStation;

extern(C++) interface TrVehicleStation_DiamondSword : TrVehicleStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleStation_DiamondSword")()); }
	private static __gshared TrVehicleStation_DiamondSword mDefaultProperties;
	@property final static TrVehicleStation_DiamondSword DefaultProperties() { mixin(MGDPC!(TrVehicleStation_DiamondSword, "TrVehicleStation_DiamondSword TribesGame.Default__TrVehicleStation_DiamondSword")()); }
}
