module UnrealScript.TribesGame.TrProj_TargetingBeacon;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_ThrowDeployable;

extern(C++) interface TrProj_TargetingBeacon : TrProj_ThrowDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TargetingBeacon")); }
	private static __gshared TrProj_TargetingBeacon mDefaultProperties;
	@property final static TrProj_TargetingBeacon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_TargetingBeacon)("TrProj_TargetingBeacon TribesGame.Default__TrProj_TargetingBeacon")); }
}
