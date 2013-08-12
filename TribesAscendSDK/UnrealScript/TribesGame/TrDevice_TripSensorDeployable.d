module UnrealScript.TribesGame.TrDevice_TripSensorDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_TripSensorDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_TripSensorDeployable")); }
	private static __gshared TrDevice_TripSensorDeployable mDefaultProperties;
	@property final static TrDevice_TripSensorDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_TripSensorDeployable)("TrDevice_TripSensorDeployable TribesGame.Default__TrDevice_TripSensorDeployable")); }
}
