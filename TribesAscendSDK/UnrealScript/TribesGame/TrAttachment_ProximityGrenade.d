module UnrealScript.TribesGame.TrAttachment_ProximityGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ProximityGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_ProximityGrenade")); }
	private static __gshared TrAttachment_ProximityGrenade mDefaultProperties;
	@property final static TrAttachment_ProximityGrenade DefaultProperties() { mixin(MGDPC("TrAttachment_ProximityGrenade", "TrAttachment_ProximityGrenade TribesGame.Default__TrAttachment_ProximityGrenade")); }
}
