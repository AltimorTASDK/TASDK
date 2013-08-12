module UnrealScript.TribesGame.TrAttachment_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ConcussionGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ConcussionGrenade_MKD")); }
	private static __gshared TrAttachment_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_ConcussionGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ConcussionGrenade_MKD)("TrAttachment_ConcussionGrenade_MKD TribesGame.Default__TrAttachment_ConcussionGrenade_MKD")); }
}
