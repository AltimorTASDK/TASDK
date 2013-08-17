module UnrealScript.TribesGame.TrAttachment_DiskToss;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_DiskToss : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_DiskToss")); }
	private static __gshared TrAttachment_DiskToss mDefaultProperties;
	@property final static TrAttachment_DiskToss DefaultProperties() { mixin(MGDPC("TrAttachment_DiskToss", "TrAttachment_DiskToss TribesGame.Default__TrAttachment_DiskToss")); }
}
