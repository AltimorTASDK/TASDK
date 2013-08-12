module UnrealScript.TribesGame.TrAttachment_Mine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Mine : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Mine")); }
	private static __gshared TrAttachment_Mine mDefaultProperties;
	@property final static TrAttachment_Mine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Mine)("TrAttachment_Mine TribesGame.Default__TrAttachment_Mine")); }
}
