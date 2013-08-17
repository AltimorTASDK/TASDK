module UnrealScript.TribesGame.TrAttachment_ThumperD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ThumperD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_ThumperD")); }
	private static __gshared TrAttachment_ThumperD mDefaultProperties;
	@property final static TrAttachment_ThumperD DefaultProperties() { mixin(MGDPC("TrAttachment_ThumperD", "TrAttachment_ThumperD TribesGame.Default__TrAttachment_ThumperD")); }
}
