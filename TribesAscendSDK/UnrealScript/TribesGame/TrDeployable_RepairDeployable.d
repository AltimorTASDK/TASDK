module UnrealScript.TribesGame.TrDeployable_RepairDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_RepairDeployable : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_RepairDeployable")()); }
	private static __gshared TrDeployable_RepairDeployable mDefaultProperties;
	@property final static TrDeployable_RepairDeployable DefaultProperties() { mixin(MGDPC!(TrDeployable_RepairDeployable, "TrDeployable_RepairDeployable TribesGame.Default__TrDeployable_RepairDeployable")()); }
}
