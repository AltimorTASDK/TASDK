module UnrealScript.TribesGame.TrAttachment_STGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_STGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_STGrenade")); }
	private static __gshared TrAttachment_STGrenade mDefaultProperties;
	@property final static TrAttachment_STGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_STGrenade)("TrAttachment_STGrenade TribesGame.Default__TrAttachment_STGrenade")); }
}
