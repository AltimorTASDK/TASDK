module UnrealScript.TribesGame.TrAttachment_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyTwinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_HeavyTwinfusor")); }
	private static __gshared TrAttachment_HeavyTwinfusor mDefaultProperties;
	@property final static TrAttachment_HeavyTwinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_HeavyTwinfusor)("TrAttachment_HeavyTwinfusor TribesGame.Default__TrAttachment_HeavyTwinfusor")); }
}
