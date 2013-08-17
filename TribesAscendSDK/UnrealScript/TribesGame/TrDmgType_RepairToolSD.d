module UnrealScript.TribesGame.TrDmgType_RepairToolSD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolSD : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_RepairToolSD")()); }
	private static __gshared TrDmgType_RepairToolSD mDefaultProperties;
	@property final static TrDmgType_RepairToolSD DefaultProperties() { mixin(MGDPC!(TrDmgType_RepairToolSD, "TrDmgType_RepairToolSD TribesGame.Default__TrDmgType_RepairToolSD")()); }
}
