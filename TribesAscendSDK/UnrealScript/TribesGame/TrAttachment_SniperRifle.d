module UnrealScript.TribesGame.TrAttachment_SniperRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SniperRifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_SniperRifle")); }
	private static __gshared TrAttachment_SniperRifle mDefaultProperties;
	@property final static TrAttachment_SniperRifle DefaultProperties() { mixin(MGDPC("TrAttachment_SniperRifle", "TrAttachment_SniperRifle TribesGame.Default__TrAttachment_SniperRifle")); }
}
