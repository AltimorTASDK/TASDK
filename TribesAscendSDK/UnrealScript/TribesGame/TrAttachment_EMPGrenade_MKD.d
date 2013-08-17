module UnrealScript.TribesGame.TrAttachment_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_EMPGrenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_EMPGrenade_MKD")); }
	private static __gshared TrAttachment_EMPGrenade_MKD mDefaultProperties;
	@property final static TrAttachment_EMPGrenade_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_EMPGrenade_MKD", "TrAttachment_EMPGrenade_MKD TribesGame.Default__TrAttachment_EMPGrenade_MKD")); }
}
