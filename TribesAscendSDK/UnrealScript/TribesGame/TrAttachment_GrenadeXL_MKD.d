module UnrealScript.TribesGame.TrAttachment_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_GrenadeXL_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_GrenadeXL_MKD")()); }
	private static __gshared TrAttachment_GrenadeXL_MKD mDefaultProperties;
	@property final static TrAttachment_GrenadeXL_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_GrenadeXL_MKD, "TrAttachment_GrenadeXL_MKD TribesGame.Default__TrAttachment_GrenadeXL_MKD")()); }
}
