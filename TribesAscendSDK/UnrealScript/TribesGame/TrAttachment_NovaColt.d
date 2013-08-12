module UnrealScript.TribesGame.TrAttachment_NovaColt;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NovaColt : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_NovaColt")); }
	private static __gshared TrAttachment_NovaColt mDefaultProperties;
	@property final static TrAttachment_NovaColt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_NovaColt)("TrAttachment_NovaColt TribesGame.Default__TrAttachment_NovaColt")); }
}
