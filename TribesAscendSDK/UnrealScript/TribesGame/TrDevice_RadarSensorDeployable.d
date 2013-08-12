module UnrealScript.TribesGame.TrDevice_RadarSensorDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_RadarSensorDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RadarSensorDeployable")); }
	private static __gshared TrDevice_RadarSensorDeployable mDefaultProperties;
	@property final static TrDevice_RadarSensorDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_RadarSensorDeployable)("TrDevice_RadarSensorDeployable TribesGame.Default__TrDevice_RadarSensorDeployable")); }
}
