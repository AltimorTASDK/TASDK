module UnrealScript.TribesGame.TrAttachment_Shotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Shotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Shotgun")); }
	private static __gshared TrAttachment_Shotgun mDefaultProperties;
	@property final static TrAttachment_Shotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Shotgun)("TrAttachment_Shotgun TribesGame.Default__TrAttachment_Shotgun")); }
}
