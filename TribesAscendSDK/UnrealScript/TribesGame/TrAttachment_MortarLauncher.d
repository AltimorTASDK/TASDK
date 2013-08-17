module UnrealScript.TribesGame.TrAttachment_MortarLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MortarLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_MortarLauncher")()); }
	private static __gshared TrAttachment_MortarLauncher mDefaultProperties;
	@property final static TrAttachment_MortarLauncher DefaultProperties() { mixin(MGDPC!(TrAttachment_MortarLauncher, "TrAttachment_MortarLauncher TribesGame.Default__TrAttachment_MortarLauncher")()); }
}
