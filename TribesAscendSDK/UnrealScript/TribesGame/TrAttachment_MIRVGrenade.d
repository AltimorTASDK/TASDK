module UnrealScript.TribesGame.TrAttachment_MIRVGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MIRVGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_MIRVGrenade")); }
	private static __gshared TrAttachment_MIRVGrenade mDefaultProperties;
	@property final static TrAttachment_MIRVGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_MIRVGrenade)("TrAttachment_MIRVGrenade TribesGame.Default__TrAttachment_MIRVGrenade")); }
}
