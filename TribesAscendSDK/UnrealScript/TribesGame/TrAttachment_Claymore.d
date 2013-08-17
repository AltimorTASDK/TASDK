module UnrealScript.TribesGame.TrAttachment_Claymore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Claymore : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Claymore")()); }
	private static __gshared TrAttachment_Claymore mDefaultProperties;
	@property final static TrAttachment_Claymore DefaultProperties() { mixin(MGDPC!(TrAttachment_Claymore, "TrAttachment_Claymore TribesGame.Default__TrAttachment_Claymore")()); }
}
