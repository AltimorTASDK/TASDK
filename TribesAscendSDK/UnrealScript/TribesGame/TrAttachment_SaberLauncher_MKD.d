module UnrealScript.TribesGame.TrAttachment_SaberLauncher_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SaberLauncher_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SaberLauncher_MKD")()); }
	private static __gshared TrAttachment_SaberLauncher_MKD mDefaultProperties;
	@property final static TrAttachment_SaberLauncher_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_SaberLauncher_MKD, "TrAttachment_SaberLauncher_MKD TribesGame.Default__TrAttachment_SaberLauncher_MKD")()); }
}
