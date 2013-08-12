module UnrealScript.TribesGame.TrAttachment_ProximityGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ProximityGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ProximityGrenade")); }
	private static __gshared TrAttachment_ProximityGrenade mDefaultProperties;
	@property final static TrAttachment_ProximityGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ProximityGrenade)("TrAttachment_ProximityGrenade TribesGame.Default__TrAttachment_ProximityGrenade")); }
}
