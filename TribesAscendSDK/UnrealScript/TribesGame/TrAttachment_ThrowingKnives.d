module UnrealScript.TribesGame.TrAttachment_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ThrowingKnives : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_ThrowingKnives")); }
	private static __gshared TrAttachment_ThrowingKnives mDefaultProperties;
	@property final static TrAttachment_ThrowingKnives DefaultProperties() { mixin(MGDPC("TrAttachment_ThrowingKnives", "TrAttachment_ThrowingKnives TribesGame.Default__TrAttachment_ThrowingKnives")); }
}
