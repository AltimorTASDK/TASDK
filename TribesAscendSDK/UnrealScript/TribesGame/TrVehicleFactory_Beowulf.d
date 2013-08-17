module UnrealScript.TribesGame.TrVehicleFactory_Beowulf;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface TrVehicleFactory_Beowulf : UTVehicleFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleFactory_Beowulf")); }
	private static __gshared TrVehicleFactory_Beowulf mDefaultProperties;
	@property final static TrVehicleFactory_Beowulf DefaultProperties() { mixin(MGDPC("TrVehicleFactory_Beowulf", "TrVehicleFactory_Beowulf TribesGame.Default__TrVehicleFactory_Beowulf")); }
}
