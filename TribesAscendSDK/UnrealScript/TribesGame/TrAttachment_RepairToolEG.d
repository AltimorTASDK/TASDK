module UnrealScript.TribesGame.TrAttachment_RepairToolEG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAttachment_RepairTool;

extern(C++) interface TrAttachment_RepairToolEG : TrAttachment_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RepairToolEG")); }
	private static __gshared TrAttachment_RepairToolEG mDefaultProperties;
	@property final static TrAttachment_RepairToolEG DefaultProperties() { mixin(MGDPC("TrAttachment_RepairToolEG", "TrAttachment_RepairToolEG TribesGame.Default__TrAttachment_RepairToolEG")); }
}
