module UnrealScript.TribesGame.TrAttachment_TCNG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TCNG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_TCNG")); }
	private static __gshared TrAttachment_TCNG mDefaultProperties;
	@property final static TrAttachment_TCNG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_TCNG)("TrAttachment_TCNG TribesGame.Default__TrAttachment_TCNG")); }
}
