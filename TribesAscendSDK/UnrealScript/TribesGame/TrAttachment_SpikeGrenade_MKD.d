module UnrealScript.TribesGame.TrAttachment_SpikeGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpikeGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SpikeGrenade_MKD")); }
	private static __gshared TrAttachment_SpikeGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_SpikeGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SpikeGrenade_MKD)("TrAttachment_SpikeGrenade_MKD TribesGame.Default__TrAttachment_SpikeGrenade_MKD")); }
}
