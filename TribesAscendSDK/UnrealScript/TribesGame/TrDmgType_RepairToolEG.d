module UnrealScript.TribesGame.TrDmgType_RepairToolEG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolEG : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RepairToolEG")); }
	private static __gshared TrDmgType_RepairToolEG mDefaultProperties;
	@property final static TrDmgType_RepairToolEG DefaultProperties() { mixin(MGDPC("TrDmgType_RepairToolEG", "TrDmgType_RepairToolEG TribesGame.Default__TrDmgType_RepairToolEG")); }
}
