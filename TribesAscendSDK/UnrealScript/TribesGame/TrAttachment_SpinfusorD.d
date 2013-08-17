module UnrealScript.TribesGame.TrAttachment_SpinfusorD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpinfusorD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_SpinfusorD")); }
	private static __gshared TrAttachment_SpinfusorD mDefaultProperties;
	@property final static TrAttachment_SpinfusorD DefaultProperties() { mixin(MGDPC("TrAttachment_SpinfusorD", "TrAttachment_SpinfusorD TribesGame.Default__TrAttachment_SpinfusorD")); }
}
