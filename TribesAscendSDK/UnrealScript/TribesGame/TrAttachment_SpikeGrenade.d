module UnrealScript.TribesGame.TrAttachment_SpikeGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpikeGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SpikeGrenade")); }
	private static __gshared TrAttachment_SpikeGrenade mDefaultProperties;
	@property final static TrAttachment_SpikeGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SpikeGrenade)("TrAttachment_SpikeGrenade TribesGame.Default__TrAttachment_SpikeGrenade")); }
}
