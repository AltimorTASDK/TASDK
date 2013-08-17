module UnrealScript.TribesGame.TrAttachment_NovaSlug;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NovaSlug : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_NovaSlug")); }
	private static __gshared TrAttachment_NovaSlug mDefaultProperties;
	@property final static TrAttachment_NovaSlug DefaultProperties() { mixin(MGDPC("TrAttachment_NovaSlug", "TrAttachment_NovaSlug TribesGame.Default__TrAttachment_NovaSlug")); }
}
