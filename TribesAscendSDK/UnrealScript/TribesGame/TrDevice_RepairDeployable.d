module UnrealScript.TribesGame.TrDevice_RepairDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Mine;

extern(C++) interface TrDevice_RepairDeployable : TrDevice_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RepairDeployable")); }
	private static __gshared TrDevice_RepairDeployable mDefaultProperties;
	@property final static TrDevice_RepairDeployable DefaultProperties() { mixin(MGDPC("TrDevice_RepairDeployable", "TrDevice_RepairDeployable TribesGame.Default__TrDevice_RepairDeployable")); }
}
