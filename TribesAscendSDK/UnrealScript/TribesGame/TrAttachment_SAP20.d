module UnrealScript.TribesGame.TrAttachment_SAP20;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SAP20 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SAP20")); }
	private static __gshared TrAttachment_SAP20 mDefaultProperties;
	@property final static TrAttachment_SAP20 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SAP20)("TrAttachment_SAP20 TribesGame.Default__TrAttachment_SAP20")); }
}
