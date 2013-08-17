module UnrealScript.TribesGame.TrAttachment_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_LightSpinfusor_MKD")); }
	private static __gshared TrAttachment_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_LightSpinfusor_MKD", "TrAttachment_LightSpinfusor_MKD TribesGame.Default__TrAttachment_LightSpinfusor_MKD")); }
}
