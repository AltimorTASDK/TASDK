module UnrealScript.TribesGame.TrAttachment_Claymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Claymore : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Claymore")); }
	private static __gshared TrAttachment_Claymore mDefaultProperties;
	@property final static TrAttachment_Claymore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Claymore)("TrAttachment_Claymore TribesGame.Default__TrAttachment_Claymore")); }
}
