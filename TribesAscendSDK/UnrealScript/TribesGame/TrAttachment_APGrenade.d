module UnrealScript.TribesGame.TrAttachment_APGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_APGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_APGrenade")); }
	private static __gshared TrAttachment_APGrenade mDefaultProperties;
	@property final static TrAttachment_APGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_APGrenade)("TrAttachment_APGrenade TribesGame.Default__TrAttachment_APGrenade")); }
}
