module UnrealScript.TribesGame.TrAttachment_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AssaultRifle_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_AssaultRifle_MKD")); }
	private static __gshared TrAttachment_AssaultRifle_MKD mDefaultProperties;
	@property final static TrAttachment_AssaultRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_AssaultRifle_MKD)("TrAttachment_AssaultRifle_MKD TribesGame.Default__TrAttachment_AssaultRifle_MKD")); }
}
