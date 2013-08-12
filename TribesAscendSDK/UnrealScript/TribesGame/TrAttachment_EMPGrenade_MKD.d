module UnrealScript.TribesGame.TrAttachment_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_EMPGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_EMPGrenade_MKD")); }
	private static __gshared TrAttachment_EMPGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_EMPGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_EMPGrenade_MKD)("TrAttachment_EMPGrenade_MKD TribesGame.Default__TrAttachment_EMPGrenade_MKD")); }
}
