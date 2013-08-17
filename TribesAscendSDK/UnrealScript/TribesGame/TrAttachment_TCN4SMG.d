module UnrealScript.TribesGame.TrAttachment_TCN4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_TCN4SMG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_TCN4SMG")()); }
	private static __gshared TrAttachment_TCN4SMG mDefaultProperties;
	@property final static TrAttachment_TCN4SMG DefaultProperties() { mixin(MGDPC!(TrAttachment_TCN4SMG, "TrAttachment_TCN4SMG TribesGame.Default__TrAttachment_TCN4SMG")()); }
}
