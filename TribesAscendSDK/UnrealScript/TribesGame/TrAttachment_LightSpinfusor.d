module UnrealScript.TribesGame.TrAttachment_LightSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_LightSpinfusor")); }
	private static __gshared TrAttachment_LightSpinfusor mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor DefaultProperties() { mixin(MGDPC("TrAttachment_LightSpinfusor", "TrAttachment_LightSpinfusor TribesGame.Default__TrAttachment_LightSpinfusor")); }
}
