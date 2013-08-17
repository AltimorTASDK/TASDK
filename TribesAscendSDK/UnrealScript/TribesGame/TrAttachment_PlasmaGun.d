module UnrealScript.TribesGame.TrAttachment_PlasmaGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PlasmaGun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_PlasmaGun")()); }
	private static __gshared TrAttachment_PlasmaGun mDefaultProperties;
	@property final static TrAttachment_PlasmaGun DefaultProperties() { mixin(MGDPC!(TrAttachment_PlasmaGun, "TrAttachment_PlasmaGun TribesGame.Default__TrAttachment_PlasmaGun")()); }
}
