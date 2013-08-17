module UnrealScript.TribesGame.TrAttachment_TCNG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TCNG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_TCNG")); }
	private static __gshared TrAttachment_TCNG mDefaultProperties;
	@property final static TrAttachment_TCNG DefaultProperties() { mixin(MGDPC("TrAttachment_TCNG", "TrAttachment_TCNG TribesGame.Default__TrAttachment_TCNG")); }
}
