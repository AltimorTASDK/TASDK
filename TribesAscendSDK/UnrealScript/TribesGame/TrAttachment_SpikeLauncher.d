module UnrealScript.TribesGame.TrAttachment_SpikeLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpikeLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SpikeLauncher")()); }
	private static __gshared TrAttachment_SpikeLauncher mDefaultProperties;
	@property final static TrAttachment_SpikeLauncher DefaultProperties() { mixin(MGDPC!(TrAttachment_SpikeLauncher, "TrAttachment_SpikeLauncher TribesGame.Default__TrAttachment_SpikeLauncher")()); }
}
