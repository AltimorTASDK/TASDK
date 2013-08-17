module UnrealScript.TribesGame.TrAttachment_MIRVLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MIRVLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_MIRVLauncher")); }
	private static __gshared TrAttachment_MIRVLauncher mDefaultProperties;
	@property final static TrAttachment_MIRVLauncher DefaultProperties() { mixin(MGDPC("TrAttachment_MIRVLauncher", "TrAttachment_MIRVLauncher TribesGame.Default__TrAttachment_MIRVLauncher")); }
}
