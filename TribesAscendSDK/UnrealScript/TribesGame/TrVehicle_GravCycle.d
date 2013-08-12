module UnrealScript.TribesGame.TrVehicle_GravCycle;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_GravCycle : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_GravCycle")); }
	private static __gshared TrVehicle_GravCycle mDefaultProperties;
	@property final static TrVehicle_GravCycle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicle_GravCycle)("TrVehicle_GravCycle TribesGame.Default__TrVehicle_GravCycle")); }
}
