module UnrealScript.TribesGame.TrAttachment_RepairToolSD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAttachment_RepairTool;

extern(C++) interface TrAttachment_RepairToolSD : TrAttachment_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RepairToolSD")); }
	private static __gshared TrAttachment_RepairToolSD mDefaultProperties;
	@property final static TrAttachment_RepairToolSD DefaultProperties() { mixin(MGDPC("TrAttachment_RepairToolSD", "TrAttachment_RepairToolSD TribesGame.Default__TrAttachment_RepairToolSD")); }
}
