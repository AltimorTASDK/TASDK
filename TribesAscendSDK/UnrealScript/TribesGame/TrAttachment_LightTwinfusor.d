module UnrealScript.TribesGame.TrAttachment_LightTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightTwinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightTwinfusor")); }
	private static __gshared TrAttachment_LightTwinfusor mDefaultProperties;
	@property final static TrAttachment_LightTwinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightTwinfusor)("TrAttachment_LightTwinfusor TribesGame.Default__TrAttachment_LightTwinfusor")); }
}
