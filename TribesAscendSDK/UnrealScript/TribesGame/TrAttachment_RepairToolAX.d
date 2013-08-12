module UnrealScript.TribesGame.TrAttachment_RepairToolAX;

import ScriptClasses;
import UnrealScript.TribesGame.TrAttachment_RepairTool;

extern(C++) interface TrAttachment_RepairToolAX : TrAttachment_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RepairToolAX")); }
	private static __gshared TrAttachment_RepairToolAX mDefaultProperties;
	@property final static TrAttachment_RepairToolAX DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RepairToolAX)("TrAttachment_RepairToolAX TribesGame.Default__TrAttachment_RepairToolAX")); }
}
