module UnrealScript.TribesGame.TrAttachment_GrenadeXL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_GrenadeXL : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_GrenadeXL")()); }
	private static __gshared TrAttachment_GrenadeXL mDefaultProperties;
	@property final static TrAttachment_GrenadeXL DefaultProperties() { mixin(MGDPC!(TrAttachment_GrenadeXL, "TrAttachment_GrenadeXL TribesGame.Default__TrAttachment_GrenadeXL")()); }
}
