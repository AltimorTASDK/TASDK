module UnrealScript.TribesGame.TrVehicleFactory_GravCycle;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface TrVehicleFactory_GravCycle : UTVehicleFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleFactory_GravCycle")); }
}
