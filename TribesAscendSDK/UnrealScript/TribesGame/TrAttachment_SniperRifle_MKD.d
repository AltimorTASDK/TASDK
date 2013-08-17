module UnrealScript.TribesGame.TrAttachment_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SniperRifle_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_SniperRifle_MKD")); }
	private static __gshared TrAttachment_SniperRifle_MKD mDefaultProperties;
	@property final static TrAttachment_SniperRifle_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_SniperRifle_MKD", "TrAttachment_SniperRifle_MKD TribesGame.Default__TrAttachment_SniperRifle_MKD")); }
}
