module UnrealScript.TribesGame.TrAttachment_LightSpinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor_100X : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightSpinfusor_100X")); }
	private static __gshared TrAttachment_LightSpinfusor_100X mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor_100X DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightSpinfusor_100X)("TrAttachment_LightSpinfusor_100X TribesGame.Default__TrAttachment_LightSpinfusor_100X")); }
}
