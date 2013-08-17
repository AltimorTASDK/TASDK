module UnrealScript.TribesGame.TrDmgType_RepairDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_RepairDeployable : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RepairDeployable")); }
	private static __gshared TrDmgType_RepairDeployable mDefaultProperties;
	@property final static TrDmgType_RepairDeployable DefaultProperties() { mixin(MGDPC("TrDmgType_RepairDeployable", "TrDmgType_RepairDeployable TribesGame.Default__TrDmgType_RepairDeployable")); }
}
