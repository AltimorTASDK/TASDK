module UnrealScript.TribesGame.TrAttachment_TargetingBeacon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TargetingBeacon : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_TargetingBeacon")); }
	private static __gshared TrAttachment_TargetingBeacon mDefaultProperties;
	@property final static TrAttachment_TargetingBeacon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_TargetingBeacon)("TrAttachment_TargetingBeacon TribesGame.Default__TrAttachment_TargetingBeacon")); }
}
