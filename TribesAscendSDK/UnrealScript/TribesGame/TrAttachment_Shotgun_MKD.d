module UnrealScript.TribesGame.TrAttachment_Shotgun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Shotgun_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Shotgun_MKD")); }
	private static __gshared TrAttachment_Shotgun_MKD mDefaultProperties;
	@property final static TrAttachment_Shotgun_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Shotgun_MKD)("TrAttachment_Shotgun_MKD TribesGame.Default__TrAttachment_Shotgun_MKD")); }
}
