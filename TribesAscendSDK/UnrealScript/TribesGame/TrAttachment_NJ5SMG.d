module UnrealScript.TribesGame.TrAttachment_NJ5SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NJ5SMG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_NJ5SMG")()); }
	private static __gshared TrAttachment_NJ5SMG mDefaultProperties;
	@property final static TrAttachment_NJ5SMG DefaultProperties() { mixin(MGDPC!(TrAttachment_NJ5SMG, "TrAttachment_NJ5SMG TribesGame.Default__TrAttachment_NJ5SMG")()); }
}
