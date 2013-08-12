module UnrealScript.TribesGame.TrAttachment_ARC8;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ARC8 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ARC8")); }
	private static __gshared TrAttachment_ARC8 mDefaultProperties;
	@property final static TrAttachment_ARC8 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ARC8)("TrAttachment_ARC8 TribesGame.Default__TrAttachment_ARC8")); }
}
