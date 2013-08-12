module UnrealScript.TribesGame.TrAttachment_LightSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightSpinfusor")); }
	private static __gshared TrAttachment_LightSpinfusor mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightSpinfusor)("TrAttachment_LightSpinfusor TribesGame.Default__TrAttachment_LightSpinfusor")); }
}
