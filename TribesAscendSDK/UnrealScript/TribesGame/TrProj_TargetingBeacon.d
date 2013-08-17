module UnrealScript.TribesGame.TrProj_TargetingBeacon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_ThrowDeployable;

extern(C++) interface TrProj_TargetingBeacon : TrProj_ThrowDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_TargetingBeacon")()); }
	private static __gshared TrProj_TargetingBeacon mDefaultProperties;
	@property final static TrProj_TargetingBeacon DefaultProperties() { mixin(MGDPC!(TrProj_TargetingBeacon, "TrProj_TargetingBeacon TribesGame.Default__TrProj_TargetingBeacon")()); }
}
