module UnrealScript.TribesGame.TrAttachment_Claymore_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Claymore_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_Claymore_MKD")); }
	private static __gshared TrAttachment_Claymore_MKD mDefaultProperties;
	@property final static TrAttachment_Claymore_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_Claymore_MKD", "TrAttachment_Claymore_MKD TribesGame.Default__TrAttachment_Claymore_MKD")); }
}
