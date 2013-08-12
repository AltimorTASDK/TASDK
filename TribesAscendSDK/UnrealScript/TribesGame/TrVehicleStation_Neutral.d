module UnrealScript.TribesGame.TrVehicleStation_Neutral;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleStation;

extern(C++) interface TrVehicleStation_Neutral : TrVehicleStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleStation_Neutral")); }
	private static __gshared TrVehicleStation_Neutral mDefaultProperties;
	@property final static TrVehicleStation_Neutral DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleStation_Neutral)("TrVehicleStation_Neutral TribesGame.Default__TrVehicleStation_Neutral")); }
}
