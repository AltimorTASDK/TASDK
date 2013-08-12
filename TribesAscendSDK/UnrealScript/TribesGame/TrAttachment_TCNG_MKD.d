module UnrealScript.TribesGame.TrAttachment_TCNG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TCNG_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_TCNG_MKD")); }
	private static __gshared TrAttachment_TCNG_MKD mDefaultProperties;
	@property final static TrAttachment_TCNG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_TCNG_MKD)("TrAttachment_TCNG_MKD TribesGame.Default__TrAttachment_TCNG_MKD")); }
}
