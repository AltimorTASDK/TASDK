module UnrealScript.TribesGame.TrAttachment_RepairToolSD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrAttachment_RepairTool;

extern(C++) interface TrAttachment_RepairToolSD_MKD : TrAttachment_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RepairToolSD_MKD")); }
	private static __gshared TrAttachment_RepairToolSD_MKD mDefaultProperties;
	@property final static TrAttachment_RepairToolSD_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RepairToolSD_MKD)("TrAttachment_RepairToolSD_MKD TribesGame.Default__TrAttachment_RepairToolSD_MKD")); }
}
