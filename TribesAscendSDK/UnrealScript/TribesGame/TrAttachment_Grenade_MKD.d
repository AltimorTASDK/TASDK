module UnrealScript.TribesGame.TrAttachment_Grenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Grenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_Grenade_MKD")()); }
	private static __gshared TrAttachment_Grenade_MKD mDefaultProperties;
	@property final static TrAttachment_Grenade_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_Grenade_MKD, "TrAttachment_Grenade_MKD TribesGame.Default__TrAttachment_Grenade_MKD")()); }
}
