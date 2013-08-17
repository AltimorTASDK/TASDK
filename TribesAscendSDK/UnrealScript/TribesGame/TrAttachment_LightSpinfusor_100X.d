module UnrealScript.TribesGame.TrAttachment_LightSpinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor_100X : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_LightSpinfusor_100X")); }
	private static __gshared TrAttachment_LightSpinfusor_100X mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor_100X DefaultProperties() { mixin(MGDPC("TrAttachment_LightSpinfusor_100X", "TrAttachment_LightSpinfusor_100X TribesGame.Default__TrAttachment_LightSpinfusor_100X")); }
}
