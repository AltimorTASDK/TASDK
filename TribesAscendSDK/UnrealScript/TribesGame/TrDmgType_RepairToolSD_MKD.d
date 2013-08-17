module UnrealScript.TribesGame.TrDmgType_RepairToolSD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolSD_MKD : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_RepairToolSD_MKD")()); }
	private static __gshared TrDmgType_RepairToolSD_MKD mDefaultProperties;
	@property final static TrDmgType_RepairToolSD_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_RepairToolSD_MKD, "TrDmgType_RepairToolSD_MKD TribesGame.Default__TrDmgType_RepairToolSD_MKD")()); }
}
