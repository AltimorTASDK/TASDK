module UnrealScript.TribesGame.TrAttachment_SaberLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SaberLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SaberLauncher")()); }
	private static __gshared TrAttachment_SaberLauncher mDefaultProperties;
	@property final static TrAttachment_SaberLauncher DefaultProperties() { mixin(MGDPC!(TrAttachment_SaberLauncher, "TrAttachment_SaberLauncher TribesGame.Default__TrAttachment_SaberLauncher")()); }
}
