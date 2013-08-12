module UnrealScript.TribesGame.TrAttachment_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavySpinfusor_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_HeavySpinfusor_MKD")); }
	private static __gshared TrAttachment_HeavySpinfusor_MKD mDefaultProperties;
	@property final static TrAttachment_HeavySpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_HeavySpinfusor_MKD)("TrAttachment_HeavySpinfusor_MKD TribesGame.Default__TrAttachment_HeavySpinfusor_MKD")); }
}
