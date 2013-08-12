module UnrealScript.TribesGame.TrDeployable_RepairDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_RepairDeployable : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_RepairDeployable")); }
	private static __gshared TrDeployable_RepairDeployable mDefaultProperties;
	@property final static TrDeployable_RepairDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployable_RepairDeployable)("TrDeployable_RepairDeployable TribesGame.Default__TrDeployable_RepairDeployable")); }
}
