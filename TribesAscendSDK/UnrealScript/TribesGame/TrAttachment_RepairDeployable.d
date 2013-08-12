module UnrealScript.TribesGame.TrAttachment_RepairDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RepairDeployable : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RepairDeployable")); }
	private static __gshared TrAttachment_RepairDeployable mDefaultProperties;
	@property final static TrAttachment_RepairDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RepairDeployable)("TrAttachment_RepairDeployable TribesGame.Default__TrAttachment_RepairDeployable")); }
}
