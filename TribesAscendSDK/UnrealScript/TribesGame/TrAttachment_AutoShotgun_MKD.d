module UnrealScript.TribesGame.TrAttachment_AutoShotgun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AutoShotgun_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_AutoShotgun_MKD")); }
	private static __gshared TrAttachment_AutoShotgun_MKD mDefaultProperties;
	@property final static TrAttachment_AutoShotgun_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_AutoShotgun_MKD", "TrAttachment_AutoShotgun_MKD TribesGame.Default__TrAttachment_AutoShotgun_MKD")); }
}
