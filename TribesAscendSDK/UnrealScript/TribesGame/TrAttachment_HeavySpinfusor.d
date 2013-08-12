module UnrealScript.TribesGame.TrAttachment_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavySpinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_HeavySpinfusor")); }
	private static __gshared TrAttachment_HeavySpinfusor mDefaultProperties;
	@property final static TrAttachment_HeavySpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_HeavySpinfusor)("TrAttachment_HeavySpinfusor TribesGame.Default__TrAttachment_HeavySpinfusor")); }
}
