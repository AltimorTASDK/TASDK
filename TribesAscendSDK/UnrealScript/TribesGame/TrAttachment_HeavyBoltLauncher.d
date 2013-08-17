module UnrealScript.TribesGame.TrAttachment_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyBoltLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_HeavyBoltLauncher")); }
	private static __gshared TrAttachment_HeavyBoltLauncher mDefaultProperties;
	@property final static TrAttachment_HeavyBoltLauncher DefaultProperties() { mixin(MGDPC("TrAttachment_HeavyBoltLauncher", "TrAttachment_HeavyBoltLauncher TribesGame.Default__TrAttachment_HeavyBoltLauncher")); }
}
