module UnrealScript.TribesGame.TrAttachment_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SniperRifle_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SniperRifle_MKD")); }
	private static __gshared TrAttachment_SniperRifle_MKD mDefaultProperties;
	@property final static TrAttachment_SniperRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SniperRifle_MKD)("TrAttachment_SniperRifle_MKD TribesGame.Default__TrAttachment_SniperRifle_MKD")); }
}
