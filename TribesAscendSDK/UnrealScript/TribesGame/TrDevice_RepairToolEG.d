module UnrealScript.TribesGame.TrDevice_RepairToolEG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolEG : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RepairToolEG")); }
	private static __gshared TrDevice_RepairToolEG mDefaultProperties;
	@property final static TrDevice_RepairToolEG DefaultProperties() { mixin(MGDPC("TrDevice_RepairToolEG", "TrDevice_RepairToolEG TribesGame.Default__TrDevice_RepairToolEG")); }
}
