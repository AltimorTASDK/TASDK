module UnrealScript.TribesGame.TrVehicleFactory_Beowulf;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface TrVehicleFactory_Beowulf : UTVehicleFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleFactory_Beowulf")); }
	private static __gshared TrVehicleFactory_Beowulf mDefaultProperties;
	@property final static TrVehicleFactory_Beowulf DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleFactory_Beowulf)("TrVehicleFactory_Beowulf TribesGame.Default__TrVehicleFactory_Beowulf")); }
}
