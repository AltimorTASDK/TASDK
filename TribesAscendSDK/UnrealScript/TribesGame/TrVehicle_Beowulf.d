module UnrealScript.TribesGame.TrVehicle_Beowulf;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_Tank;

extern(C++) interface TrVehicle_Beowulf : TrVehicle_Tank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_Beowulf")); }
	private static __gshared TrVehicle_Beowulf mDefaultProperties;
	@property final static TrVehicle_Beowulf DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicle_Beowulf)("TrVehicle_Beowulf TribesGame.Default__TrVehicle_Beowulf")); }
}
