module UnrealScript.TribesGame.TrAttachment_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyAPGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_HeavyAPGrenade_MKD")); }
	private static __gshared TrAttachment_HeavyAPGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_HeavyAPGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_HeavyAPGrenade_MKD)("TrAttachment_HeavyAPGrenade_MKD TribesGame.Default__TrAttachment_HeavyAPGrenade_MKD")); }
}
