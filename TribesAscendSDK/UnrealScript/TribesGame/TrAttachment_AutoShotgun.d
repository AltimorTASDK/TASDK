module UnrealScript.TribesGame.TrAttachment_AutoShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AutoShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_AutoShotgun")); }
	private static __gshared TrAttachment_AutoShotgun mDefaultProperties;
	@property final static TrAttachment_AutoShotgun DefaultProperties() { mixin(MGDPC("TrAttachment_AutoShotgun", "TrAttachment_AutoShotgun TribesGame.Default__TrAttachment_AutoShotgun")); }
}
