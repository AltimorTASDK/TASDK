module UnrealScript.TribesGame.TrAttachment_STGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_STGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_STGrenade")); }
	private static __gshared TrAttachment_STGrenade mDefaultProperties;
	@property final static TrAttachment_STGrenade DefaultProperties() { mixin(MGDPC("TrAttachment_STGrenade", "TrAttachment_STGrenade TribesGame.Default__TrAttachment_STGrenade")); }
}
