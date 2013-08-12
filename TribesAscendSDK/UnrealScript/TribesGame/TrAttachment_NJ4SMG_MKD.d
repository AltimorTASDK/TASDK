module UnrealScript.TribesGame.TrAttachment_NJ4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NJ4SMG_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_NJ4SMG_MKD")); }
	private static __gshared TrAttachment_NJ4SMG_MKD mDefaultProperties;
	@property final static TrAttachment_NJ4SMG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_NJ4SMG_MKD)("TrAttachment_NJ4SMG_MKD TribesGame.Default__TrAttachment_NJ4SMG_MKD")); }
}
