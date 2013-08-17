module UnrealScript.TribesGame.TrAttachment_BoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_BoltLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_BoltLauncher")); }
	private static __gshared TrAttachment_BoltLauncher mDefaultProperties;
	@property final static TrAttachment_BoltLauncher DefaultProperties() { mixin(MGDPC("TrAttachment_BoltLauncher", "TrAttachment_BoltLauncher TribesGame.Default__TrAttachment_BoltLauncher")); }
}
