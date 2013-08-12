module UnrealScript.TribesGame.TrAttachment_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NovaColt_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_NovaColt_MKD")); }
	private static __gshared TrAttachment_NovaColt_MKD mDefaultProperties;
	@property final static TrAttachment_NovaColt_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_NovaColt_MKD)("TrAttachment_NovaColt_MKD TribesGame.Default__TrAttachment_NovaColt_MKD")); }
}
