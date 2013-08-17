module UnrealScript.TribesGame.TrAttachment_Shotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Shotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Shotgun")); }
	private static __gshared TrAttachment_Shotgun mDefaultProperties;
	@property final static TrAttachment_Shotgun DefaultProperties() { mixin(MGDPC("TrAttachment_Shotgun", "TrAttachment_Shotgun TribesGame.Default__TrAttachment_Shotgun")); }
}
