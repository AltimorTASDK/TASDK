module UnrealScript.TribesGame.TrAttachment_Claymore_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Claymore_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Claymore_MKD")); }
	private static __gshared TrAttachment_Claymore_MKD mDefaultProperties;
	@property final static TrAttachment_Claymore_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Claymore_MKD)("TrAttachment_Claymore_MKD TribesGame.Default__TrAttachment_Claymore_MKD")); }
}
