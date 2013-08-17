module UnrealScript.TribesGame.TrAttachment_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MortarLauncher_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_MortarLauncher_MKD")); }
	private static __gshared TrAttachment_MortarLauncher_MKD mDefaultProperties;
	@property final static TrAttachment_MortarLauncher_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_MortarLauncher_MKD", "TrAttachment_MortarLauncher_MKD TribesGame.Default__TrAttachment_MortarLauncher_MKD")); }
}
