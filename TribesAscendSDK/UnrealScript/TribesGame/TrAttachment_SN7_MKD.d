module UnrealScript.TribesGame.TrAttachment_SN7_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SN7_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_SN7_MKD")); }
	private static __gshared TrAttachment_SN7_MKD mDefaultProperties;
	@property final static TrAttachment_SN7_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_SN7_MKD", "TrAttachment_SN7_MKD TribesGame.Default__TrAttachment_SN7_MKD")); }
}
