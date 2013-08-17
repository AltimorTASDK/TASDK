module UnrealScript.TribesGame.TrDevice_RepairToolSD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolSD : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_RepairToolSD")()); }
	private static __gshared TrDevice_RepairToolSD mDefaultProperties;
	@property final static TrDevice_RepairToolSD DefaultProperties() { mixin(MGDPC!(TrDevice_RepairToolSD, "TrDevice_RepairToolSD TribesGame.Default__TrDevice_RepairToolSD")()); }
}
