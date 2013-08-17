module UnrealScript.TribesGame.TrAttachment_EMPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_EMPGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_EMPGrenade")); }
	private static __gshared TrAttachment_EMPGrenade mDefaultProperties;
	@property final static TrAttachment_EMPGrenade DefaultProperties() { mixin(MGDPC("TrAttachment_EMPGrenade", "TrAttachment_EMPGrenade TribesGame.Default__TrAttachment_EMPGrenade")); }
}
