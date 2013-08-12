module UnrealScript.TribesGame.TrAttachment_DiskToss;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_DiskToss : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_DiskToss")); }
	private static __gshared TrAttachment_DiskToss mDefaultProperties;
	@property final static TrAttachment_DiskToss DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_DiskToss)("TrAttachment_DiskToss TribesGame.Default__TrAttachment_DiskToss")); }
}
