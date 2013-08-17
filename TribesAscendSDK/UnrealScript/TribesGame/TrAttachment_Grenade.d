module UnrealScript.TribesGame.TrAttachment_Grenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Grenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Grenade")()); }
	private static __gshared TrAttachment_Grenade mDefaultProperties;
	@property final static TrAttachment_Grenade DefaultProperties() { mixin(MGDPC!(TrAttachment_Grenade, "TrAttachment_Grenade TribesGame.Default__TrAttachment_Grenade")()); }
}
