module UnrealScript.TribesGame.TrAttachment_TC24;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TC24 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_TC24")); }
	private static __gshared TrAttachment_TC24 mDefaultProperties;
	@property final static TrAttachment_TC24 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_TC24)("TrAttachment_TC24 TribesGame.Default__TrAttachment_TC24")); }
}
