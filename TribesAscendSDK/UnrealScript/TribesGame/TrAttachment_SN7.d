module UnrealScript.TribesGame.TrAttachment_SN7;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SN7 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SN7")()); }
	private static __gshared TrAttachment_SN7 mDefaultProperties;
	@property final static TrAttachment_SN7 DefaultProperties() { mixin(MGDPC!(TrAttachment_SN7, "TrAttachment_SN7 TribesGame.Default__TrAttachment_SN7")()); }
}
