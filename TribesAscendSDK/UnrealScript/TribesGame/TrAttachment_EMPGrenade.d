module UnrealScript.TribesGame.TrAttachment_EMPGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_EMPGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_EMPGrenade")); }
	private static __gshared TrAttachment_EMPGrenade mDefaultProperties;
	@property final static TrAttachment_EMPGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_EMPGrenade)("TrAttachment_EMPGrenade TribesGame.Default__TrAttachment_EMPGrenade")); }
}
