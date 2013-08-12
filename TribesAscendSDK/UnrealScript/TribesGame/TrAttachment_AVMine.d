module UnrealScript.TribesGame.TrAttachment_AVMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AVMine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_AVMine")); }
	private static __gshared TrAttachment_AVMine mDefaultProperties;
	@property final static TrAttachment_AVMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_AVMine)("TrAttachment_AVMine TribesGame.Default__TrAttachment_AVMine")); }
}
