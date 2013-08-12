module UnrealScript.TribesGame.TrDevice_OmniSensorDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_OmniSensorDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_OmniSensorDeployable")); }
	private static __gshared TrDevice_OmniSensorDeployable mDefaultProperties;
	@property final static TrDevice_OmniSensorDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_OmniSensorDeployable)("TrDevice_OmniSensorDeployable TribesGame.Default__TrDevice_OmniSensorDeployable")); }
}
