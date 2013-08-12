module UnrealScript.TribesGame.TrAttachment_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ArxBuster_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ArxBuster_MKD")); }
	private static __gshared TrAttachment_ArxBuster_MKD mDefaultProperties;
	@property final static TrAttachment_ArxBuster_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ArxBuster_MKD)("TrAttachment_ArxBuster_MKD TribesGame.Default__TrAttachment_ArxBuster_MKD")); }
}
