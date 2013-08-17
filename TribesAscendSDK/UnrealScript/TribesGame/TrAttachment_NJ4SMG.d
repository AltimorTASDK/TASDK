module UnrealScript.TribesGame.TrAttachment_NJ4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NJ4SMG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_NJ4SMG")); }
	private static __gshared TrAttachment_NJ4SMG mDefaultProperties;
	@property final static TrAttachment_NJ4SMG DefaultProperties() { mixin(MGDPC("TrAttachment_NJ4SMG", "TrAttachment_NJ4SMG TribesGame.Default__TrAttachment_NJ4SMG")); }
}
