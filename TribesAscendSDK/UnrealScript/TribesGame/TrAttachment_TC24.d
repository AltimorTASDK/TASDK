module UnrealScript.TribesGame.TrAttachment_TC24;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TC24 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_TC24")); }
	private static __gshared TrAttachment_TC24 mDefaultProperties;
	@property final static TrAttachment_TC24 DefaultProperties() { mixin(MGDPC("TrAttachment_TC24", "TrAttachment_TC24 TribesGame.Default__TrAttachment_TC24")); }
}
